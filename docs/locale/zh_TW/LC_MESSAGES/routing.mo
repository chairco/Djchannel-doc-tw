��          �               \  �   ]  �   �  f   �     �  y   �  {   o     �  �   �  L  �  �     &   �  �     '  �    �  0   �	     -
  p   M
  �   �
  \   \  �  �  r   �  �   �  f   �  	   �  y   	  {   �     �  �     L  �  �   G  %     �   6  '  �      0   -      ^  p     �   �  \   �   A method called ``channel_names``, which returns a set of channel names that will match, which is fed to the channel layer to listen on them. A method called ``match``, taking a single ``message`` as an argument and returning ``None`` for no match or a tuple of ``(consumer, kwargs)`` if matched. Filtering is how you limit matches based on, for example, URLs; you use regular expressions, like so:: Filters Filters can capture keyword arguments to be passed to your function or your class based consumer methods as a ``kwarg``:: Multiple filters are always combined with logical AND; that is, you need to match every filter to have the consumer called. Routing Routing in Channels is done using a system similar to that in core Django; a list of possible routes is provided, and Channels goes through all routes until a match is found, and then runs the resulting consumer. The difference comes, however, in the fact that Channels has to route based on more than just URL; channel name is the main thing routed on, and URL path is one of many other optional things you can route on, depending on the protocol (for example, imagine email consumers - they would route on domain or recipient address instead). The routing Channels takes is just a list of *routing objects* - the three built in ones are ``route``, ``route_class`` and ``include``, but any object that implements the routing interface will work: The three default routing objects are: Unlike Django's URL routing, which strips the first slash of a URL for neatness, Channels includes the first slash, as the routing system is generic and not designed just for URLs. When you specify filters on ``include``, the matched portion of the attribute is removed for matches inside the include; for example, this arrangement matches URLs like ``/liveblog/stream/``, because the outside ``include`` strips off the ``/liveblog`` part it matches before passing it inside:: You can also include named capture groups in the filters on an include and they'll be passed to the consumer just like those on ``route``; note, though, that if the keyword argument names from the ``include`` and the ``route`` clash, the values from ``route`` will take precedence. You can also specify filters on an ``include``:: You can have multiple filters:: ``include``: Takes either a list or string import path to a routing list, and optional filter keyword arguments. ``route_class``: Takes a class-based consumer, and optional filter keyword arguments. Channel names are taken from the consumer's ``channel_names()`` method. ``route``: Takes a channel name, a consumer function, and optional filter keyword arguments. Project-Id-Version: test 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-26 15:46+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: YUN CHEN <kweily632@gmail.com>, 2017
Language: zh_Hant_TW
Language-Team: Chinese (Taiwan) (https://www.transifex.com/django-channels-tw-docs/teams/72101/zh_TW/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 有個功能鍵叫"channel_names"可回覆一組可搭配的 channel 名稱，這使 channel 層可以管控他們 A method called ``match``, taking a single ``message`` as an argument and returning ``None`` for no match or a tuple of ``(consumer, kwargs)`` if matched. Filtering is how you limit matches based on, for example, URLs; you use regular expressions, like so:: 過濾器 Filters can capture keyword arguments to be passed to your function or your class based consumer methods as a ``kwarg``:: Multiple filters are always combined with logical AND; that is, you need to match every filter to have the consumer called. 路由 Channels 中的路由是使用一個較 Django 核心簡單的系統來達成的。給予一個所有可能路由的序列，Channels 將會遍歷所有的可能直到發現一個相符的路由，然後該路由的 consumer 將會被執行。 The difference comes, however, in the fact that Channels has to route based on more than just URL; channel name is the main thing routed on, and URL path is one of many other optional things you can route on, depending on the protocol (for example, imagine email consumers - they would route on domain or recipient address instead). The routing Channels takes is just a list of *routing objects* - the three built in ones are ``route``, ``route_class`` and ``include``, but any object that implements the routing interface will work: 以下是三個預設的路由物件: Unlike Django's URL routing, which strips the first slash of a URL for neatness, Channels includes the first slash, as the routing system is generic and not designed just for URLs. When you specify filters on ``include``, the matched portion of the attribute is removed for matches inside the include; for example, this arrangement matches URLs like ``/liveblog/stream/``, because the outside ``include`` strips off the ``/liveblog`` part it matches before passing it inside:: You can also include named capture groups in the filters on an include and they'll be passed to the consumer just like those on ``route``; note, though, that if the keyword argument names from the ``include`` and the ``route`` clash, the values from ``route`` will take precedence. You can also specify filters on an ``include``:: 你可以使用多重過濾器:: ``include``: Takes either a list or string import path to a routing list, and optional filter keyword arguments. ``route_class``: Takes a class-based consumer, and optional filter keyword arguments. Channel names are taken from the consumer's ``channel_names()`` method. ``route``: Takes a channel name, a consumer function, and optional filter keyword arguments. 