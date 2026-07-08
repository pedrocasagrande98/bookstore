EBAC\BACKEND\MOD15-view-set-DRF> poetry run pytest -v
=============================== test session starts ===============================
platform win32 -- Python 3.14.0, pytest-9.1.1, pluggy-1.6.0 -- C:\Users\G15-PHCCG\AppData\Local\pypoetry\Cache\virtualenvs\bookstore-5WX-T1-B-py3.14\Scripts\python.exe
cachedir: .pytest_cache
django: version: 6.0.6, settings: bookstore.settings (from ini)
rootdir: D:\2026\S\EBAC\BACKEND\MOD15-view-set-DRF
configfile: pytest.ini
plugins: Faker-40.28.1, django-4.12.0
collected 9 items                                                                  

order/tests/test_serializers/test_order_serializer.py::TestOrderSerializer::test_order_serializer PASSED [ 11%]
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_create_order PASSED [ 22%]
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_order PASSED [ 33%]
product/tests/test_serializers/test_category_serializer.py::TestCategorySerializer::test_order_serializer PASSED [ 44%]
product/tests/test_serializers/test_product_serializer.py::TestProductSerializer::test_product_serializer PASSED [ 55%]
product/tests/test_viewsets/test_category_viewset.py::CategoryViewSet::test_create_category PASSED [ 66%]
product/tests/test_viewsets/test_category_viewset.py::CategoryViewSet::test_get_all_category PASSED [ 77%]
product/tests/test_viewsets/test_product_viewset.py::TestProductViewSet::test_create_product PASSED [ 88%]
product/tests/test_viewsets/test_product_viewset.py::TestProductViewSet::test_get_all_product PASSED [100%]

================================ warnings summary ================================= 
order/tests/test_serializers/test_order_serializer.py::TestOrderSerializer::test_order_serializer
order/tests/test_serializers/test_order_serializer.py::TestOrderSerializer::test_order_serializer
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_create_order
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_create_order
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_order       
product/tests/test_serializers/test_product_serializer.py::TestProductSerializer::test_product_serializer
product/tests/test_viewsets/test_product_viewset.py::TestProductViewSet::test_create_product
product/tests/test_viewsets/test_product_viewset.py::TestProductViewSet::test_get_all_product
  C:\Users\G15-PHCCG\AppData\Local\pypoetry\Cache\virtualenvs\bookstore-5WX-T1-B-py3.14\Lib\site-packages\factory\django.py:182: DeprecationWarning: ProductFactory._after_postgeneration will stop saving the instance after postgeneration hooks in the next major release.
  If the save call is extraneous, set skip_postgeneration_save=True in the ProductFactory.Meta.
  To keep saving the instance, move the save call to your postgeneration hooks or override _after_postgeneration.
    warnings.warn(

order/tests/test_serializers/test_order_serializer.py::TestOrderSerializer::test_order_serializer
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_create_order
order/tests/test_viewsets/test_order_viewset.py::TestOrderViewSet::test_order       
  C:\Users\G15-PHCCG\AppData\Local\pypoetry\Cache\virtualenvs\bookstore-5WX-T1-B-py3.14\Lib\site-packages\factory\django.py:182: DeprecationWarning: OrderFactory._after_postgeneration will stop saving the instance after postgeneration hooks in the next major release.
  If the save call is extraneous, set skip_postgeneration_save=True in the OrderFactory.Meta.
  To keep saving the instance, move the save call to your postgeneration hooks or override _after_postgeneration.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html