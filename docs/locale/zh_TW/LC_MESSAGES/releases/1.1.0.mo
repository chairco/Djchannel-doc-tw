��          |               �      �      �   C     �   T  �   #     �     �     �      s     S     �  �     g     {  C   �  �   �  �   �     b     p     �    �  s   �	  S   	
   1.1.0 Release Notes Backwards Incompatible Changes Bindings now support non-integer fields for primary keys on models. Channels 1.1.0 introduces a couple of major but backwards-compatible changes, including most notably the inclusion of a standard, framework-agnostic JavaScript library for easier integration with your site. Channels now includes a JavaScript wrapper that wraps reconnection and multiplexing for you on the client side. For more on how to use it, see the :doc:`/javascript` documentation. Major Changes Minor Changes & Bugfixes None. Test classes have been moved from ``channels.tests`` to ``channels.test`` to better match Django. Old imports from ``channels.tests`` will continue to work but will trigger a deprecation warning, and ``channels.tests`` will be removed completely in version 1.3. The ``enforce_ordering`` decorator no longer suffers a race condition where it would drop messages under high load. ``runserver`` no longer errors if the ``staticfiles`` app is not enabled in Django. Project-Id-Version: Channels-docs-zh_TW 2.1.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-05-21 20:37+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hant_TW
Language-Team: zh_Hant_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 1.1.0 Release Notes Backwards Incompatible Changes Bindings now support non-integer fields for primary keys on models. Channels 1.1.0 introduces a couple of major but backwards-compatible changes, including most notably the inclusion of a standard, framework-agnostic JavaScript library for easier integration with your site. Channels now includes a JavaScript wrapper that wraps reconnection and multiplexing for you on the client side. For more on how to use it, see the :doc:`/javascript` documentation. Major Changes Minor Changes & Bugfixes None. Test classes have been moved from ``channels.tests`` to ``channels.test`` to better match Django. Old imports from ``channels.tests`` will continue to work but will trigger a deprecation warning, and ``channels.tests`` will be removed completely in version 1.3. The ``enforce_ordering`` decorator no longer suffers a race condition where it would drop messages under high load. ``runserver`` no longer errors if the ``staticfiles`` app is not enabled in Django. 