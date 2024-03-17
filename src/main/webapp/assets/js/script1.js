const wrapper = document.querySelector(".wrapper");
const carousel = document.querySelector(".carousel");
const firstCardWidth = carousel.querySelector(".card").offsetWidth;
//offsetWidth property is used to get the width of an element, including its padding, border, and vertical scrollbar (if present), but excluding margins.
const arrowBtns = document.querySelectorAll(".wrapper i");



let isDragging = false, startX, startScrollLeft;

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {			//(300px)
        const scrollAmount = btn.id === "left" ? -firstCardWidth : firstCardWidth;
        const newScrollLeft = carousel.scrollLeft + scrollAmount;

        // Check if scrolling to the left and not reaching the beginning or scrolling to the right and not reaching the end
        if ((btn.id === "left" && newScrollLeft >= 0) || (btn.id === "right" && newScrollLeft + carousel.offsetWidth <= carousel.scrollWidth)) {
            carousel.scrollLeft = newScrollLeft;
        }
    });
});

const dragStart = (e) => {
    isDragging = true;
    startX = e.pageX;
    startScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if (!isDragging) return;
    const scrollAmount = startX - e.pageX;
    carousel.scrollLeft = startScrollLeft + scrollAmount;
}

const dragStop = () => {
    isDragging = false;
}

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);







/*for next and previous page*/



	
function getPageList(totalPages, page , maxLength){
	function range(start, end){
		return Array.from(Array(end - start + 1), (_, i)=> i + start);
	}
	
	var sideWidth = maxLength < 9 ? 1 : 2;
	var leftWidth = (maxLength - sideWidth * 2 - 3) >> 1 ;
	var rightWidth = (maxLength - sideWidth * 2 - 3) >> 1 ;
	
	if(totalPages <= maxLength){
		return range(1, totalPages);
	}
	
	if(page <= maxLength - sideWidth - 1 - rightWidth){
		return range(1, maxLength - sideWidth - 1).concat(0, range (totalPages - sideWidth + 1, totalPages));
	}
	
	if(page >= totalPages - sideWidth - 1 - rightWidth){
		return range(1, sideWidth).concat(0, range(totalPages - sideWidth - 1 - rightWidth - leftWidth, totalPages));
		}
		
		return range(1, sideWidth).concat(0, range(page - leftWidth, page + rightWidth),0, range(totalPages - sideWidth + 1, totalPages));
} // getPageList function body


$(function(){
	var numberOfItems = $(".card-content .card2").length  //number of cards (card length) 
	var limitPerPage = 4;  	//how many card items visible per a page
	var totalPages = Math.ceil(numberOfItems / limitPerPage);
	var paginationSize = 7 ; //pagination 1 2 3 4 ...(4 cards each)
	var currentPage ;
	
	function showPage(whichPage){
		if(whichPage < 1 || whichPage > totalPages) return false;
		currentPage = whichPage;
		$(".card-content .card2").hide().slice((currentPage - 1) * limitPerPage, currentPage * limitPerPage).show(); 
		$(".pagination li").slice(1, -1).remove();
		
		getPageList(totalPages, currentPage, paginationSize).forEach(item => {
			$("<li>").addClass("page-item").addClass(item ? "current-page" : "dots")
			.toggleClass("active", item === currentPage).append($("<a>").addClass("page-link")
			.attr({href: "javascript:void(0)"}).text(item || "...")).insertBefore(".next-page");
		});
		
		$(".previous-page").toggleClass("disable", currentPage === 1);
		$(".next-page").toggleClass("disable", currentPage === totalPages);
		return true;
		
	}  //showPage function body
	
	
	$(".pagination").append(
		$("<li>").addClass("page-item").addClass("previous-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Prev")),
		$("<li>").addClass("page-item").addClass("next-page").append($("<a>").addClass("page-link").attr({href: "javascript:void(0)"}).text("Next"))
	);
	
	$(".card-content").show();
	showPage(1);
	
	
	$(document).on("click", ".pagination li.current-page:not(.active)", function(){
		return showPage(+$(this).text());
	});
	
	$(".next-page").on("click", function(){
		return showPage(currentPage + 1);
	});
	
	$(".previous-page").on("click", function(){
		return showPage(currentPage - 1);
	});
	
	
	
});

function filterCards() {
    var searchInput = document.getElementById('searchtext').value.trim().toLowerCase();
    var cards = document.querySelectorAll('.card');

    if (searchInput === '') {
        location.reload(); // Reload the page if search input is empty
        return;
    }

    cards.forEach(function(card) {
        var cardName = card.querySelector('h2').textContent.toLowerCase();
        var cardDesignation = card.querySelector('span').textContent.toLowerCase();
        var additionalInfo = card.querySelectorAll('p');
        var additionalInfoText = "";

        additionalInfo.forEach(function(info) {
            additionalInfoText += info.textContent.toLowerCase();
        });

        if (cardName.includes(searchInput) || cardDesignation.includes(searchInput) || additionalInfoText.includes(searchInput)) {
            card.style.display = 'flex';
        } else {
            card.style.display = 'none';
        }
    });
}


/*Sure, let's break it down in simpler terms:

When you're working with JavaScript and you're doing things with the mouse, like clicking or moving it around on a webpage, JavaScript keeps track of where the mouse is. e.pageX is like a little marker that tells you how far from the left edge of the whole webpage the mouse is. It's like measuring from the left side of the whole paper you're writing on.

So, if you're trying to figure out where the mouse is on the webpage, e.pageX gives you the horizontal (side-to-side) position in terms of pixels, which are tiny dots on the screen. This information can be really useful for making things happen on the webpage based on where the user is pointing with their mouse. */

