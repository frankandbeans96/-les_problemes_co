
const search = () => {
  const list = document.querySelector('#results');


  fetch('http://localhost:3000/articles?query=top+chef')
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      data.forEach((result) => {
          const article = `<li>
            <a href="${result.url}"><h6>${result.title}</h6></a>
            <p>${result.foreword}</p>
          </li>`;
          list.insertAdjacentHTML('beforeend', article);
        });
  });


};


export { search };
