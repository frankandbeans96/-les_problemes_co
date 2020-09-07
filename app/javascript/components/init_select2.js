import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();

  $('.select2-categories').select2({
    width: "100%",
    height: "70px",
    allowClear: true,
      tags: true,
      tokenSeparators: [',']
  });
};

export { initSelect2 };
