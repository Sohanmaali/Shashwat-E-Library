/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


 // Function to get the current date and time in the required format
        function getCurrentDateTime() {
          const now = new Date();
          const year = now.getFullYear();
          const month = (now.getMonth() + 1).toString().padStart(2, '0');
          const day = now.getDate().toString().padStart(2, '0');
          const hours = now.getHours().toString().padStart(2, '0');
          const minutes = now.getMinutes().toString().padStart(2, '0');
          
          return `${year}-${month}-${day}T${hours}:${minutes}`;
        }
      
        // Set the current date and time when the page loads
        document.getElementById('publishing-date').value = getCurrentDateTime();