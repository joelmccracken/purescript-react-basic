module React.Basic.DOM.Childish
  ( module React.Basic.DOM
  , module React.Basic.DOM.Childish
  ) where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, createElement, createElementKeyed)
import React.Basic.DOM (text, CSS, css, mergeStyles, SharedProps, unsafeCreateDOMComponent)
import React.Basic.Events (EventHandler)
import Record (union)

createChildishElement
  :: forall children props
   . ReactComponent { children :: children | props }
  -> { | props }
  -> children
  -> JSX
createChildishElement component props children =
  createElement component (union { children } props)

createChildishKeyedElement
  :: forall children props
   . ReactComponent { children :: children | props }
  -> { key :: String | props }
  -> children
  -> JSX
createChildishKeyedElement component props children =
  createElementKeyed component (union { children } props)

-- | -------------------------------
-- | GENERATED CODE BELOW THIS LINE!
-- | -------------------------------

type Props_a =
  ( coords :: String
  , download :: String
  , href :: String
  , name :: String
  , onClick :: EventHandler
  , rel :: String
  , shape :: String
  , target :: String
  , type :: String
  )

a_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_a)
  => Record attrs -> Array JSX
  -> JSX
a_ = createChildishElement (unsafeCreateDOMComponent "a")

type Props_abbr =
  ( title :: String
  )

abbr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_abbr)
  => Record attrs -> Array JSX
  -> JSX
abbr_ = createChildishElement (unsafeCreateDOMComponent "abbr")

type Props_address =()

address_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_address)
  => Record attrs -> Array JSX
  -> JSX
address_ = createChildishElement (unsafeCreateDOMComponent "address")

type Props_area =
  ( alt :: String
  , coords :: String
  , download :: String
  , href :: String
  , rel :: String
  , shape :: String
  , target :: String
  , type :: String
  )

area_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_area)
  => Record attrs
  -> JSX
area_ = createElement (unsafeCreateDOMComponent "area")

type Props_article =()

article_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_article)
  => Record attrs -> Array JSX
  -> JSX
article_ = createChildishElement (unsafeCreateDOMComponent "article")

type Props_aside =()

aside_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_aside)
  => Record attrs -> Array JSX
  -> JSX
aside_ = createChildishElement (unsafeCreateDOMComponent "aside")

type Props_audio =
  ( controls :: Boolean
  , loop :: Boolean
  , muted :: Boolean
  , preload :: String
  , src :: String
  )

audio_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_audio)
  => Record attrs -> Array JSX
  -> JSX
audio_ = createChildishElement (unsafeCreateDOMComponent "audio")

type Props_b =()

b_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_b)
  => Record attrs -> Array JSX
  -> JSX
b_ = createChildishElement (unsafeCreateDOMComponent "b")

type Props_base =
  ( href :: String
  , target :: String
  )

base_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_base)
  => Record attrs
  -> JSX
base_ = createElement (unsafeCreateDOMComponent "base")

type Props_bdi =()

bdi_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_bdi)
  => Record attrs -> Array JSX
  -> JSX
bdi_ = createChildishElement (unsafeCreateDOMComponent "bdi")

type Props_bdo =
  ( dir :: String
  )

bdo_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_bdo)
  => Record attrs -> Array JSX
  -> JSX
bdo_ = createChildishElement (unsafeCreateDOMComponent "bdo")

type Props_blockquote =
  ( cite :: String
  )

blockquote_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_blockquote)
  => Record attrs -> Array JSX
  -> JSX
blockquote_ = createChildishElement (unsafeCreateDOMComponent "blockquote")

type Props_body =()

body_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_body)
  => Record attrs -> Array JSX
  -> JSX
body_ = createChildishElement (unsafeCreateDOMComponent "body")

type Props_br =()

br_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_br)
  => Record attrs
  -> JSX
br_ = createElement (unsafeCreateDOMComponent "br")

type Props_button =
  ( disabled :: Boolean
  , form :: String
  , name :: String
  , type :: String
  , value :: String
  )

button_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_button)
  => Record attrs -> Array JSX
  -> JSX
button_ = createChildishElement (unsafeCreateDOMComponent "button")

type Props_canvas =
  ( height :: String
  , width :: String
  )

canvas_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_canvas)
  => Record attrs -> Array JSX
  -> JSX
canvas_ = createChildishElement (unsafeCreateDOMComponent "canvas")

type Props_caption =()

caption_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_caption)
  => Record attrs -> Array JSX
  -> JSX
caption_ = createChildishElement (unsafeCreateDOMComponent "caption")

type Props_cite =()

cite_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_cite)
  => Record attrs -> Array JSX
  -> JSX
cite_ = createChildishElement (unsafeCreateDOMComponent "cite")

type Props_code =()

code_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_code)
  => Record attrs -> Array JSX
  -> JSX
code_ = createChildishElement (unsafeCreateDOMComponent "code")

type Props_col =
  ( span :: Number
  , width :: String
  )

col_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_col)
  => Record attrs
  -> JSX
col_ = createElement (unsafeCreateDOMComponent "col")

type Props_colgroup =
  ( span :: Number
  , width :: String
  )

colgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_colgroup)
  => Record attrs -> Array JSX
  -> JSX
colgroup_ = createChildishElement (unsafeCreateDOMComponent "colgroup")

type Props_data =
  ( value :: String
  )

data_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_data)
  => Record attrs -> Array JSX
  -> JSX
data_ = createChildishElement (unsafeCreateDOMComponent "data")

type Props_datalist =()

datalist_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_datalist)
  => Record attrs -> Array JSX
  -> JSX
datalist_ = createChildishElement (unsafeCreateDOMComponent "datalist")

type Props_dd =()

dd_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dd)
  => Record attrs -> Array JSX
  -> JSX
dd_ = createChildishElement (unsafeCreateDOMComponent "dd")

type Props_del =
  ( cite :: String
  )

del_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_del)
  => Record attrs -> Array JSX
  -> JSX
del_ = createChildishElement (unsafeCreateDOMComponent "del")

type Props_details =
  ( open :: Boolean
  )

details_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_details)
  => Record attrs -> Array JSX
  -> JSX
details_ = createChildishElement (unsafeCreateDOMComponent "details")

type Props_dfn =
  ( title :: String
  )

dfn_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dfn)
  => Record attrs -> Array JSX
  -> JSX
dfn_ = createChildishElement (unsafeCreateDOMComponent "dfn")

type Props_dialog =
  ( open :: Boolean
  )

dialog_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dialog)
  => Record attrs -> Array JSX
  -> JSX
dialog_ = createChildishElement (unsafeCreateDOMComponent "dialog")

type Props_div =()

div_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_div)
  => Record attrs -> Array JSX
  -> JSX
div_ = createChildishElement (unsafeCreateDOMComponent "div")

type Props_dl =()

dl_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dl)
  => Record attrs -> Array JSX
  -> JSX
dl_ = createChildishElement (unsafeCreateDOMComponent "dl")

type Props_dt =()

dt_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dt)
  => Record attrs -> Array JSX
  -> JSX
dt_ = createChildishElement (unsafeCreateDOMComponent "dt")

type Props_em =()

em_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_em)
  => Record attrs -> Array JSX
  -> JSX
em_ = createChildishElement (unsafeCreateDOMComponent "em")

type Props_embed =
  ( height :: String
  , src :: String
  , type :: String
  , width :: String
  )

embed_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_embed)
  => Record attrs
  -> JSX
embed_ = createElement (unsafeCreateDOMComponent "embed")

type Props_fieldset =
  ( disabled :: Boolean
  , form :: String
  , name :: String
  )

fieldset_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_fieldset)
  => Record attrs -> Array JSX
  -> JSX
fieldset_ = createChildishElement (unsafeCreateDOMComponent "fieldset")

type Props_figcaption =()

figcaption_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_figcaption)
  => Record attrs -> Array JSX
  -> JSX
figcaption_ = createChildishElement (unsafeCreateDOMComponent "figcaption")

type Props_figure =()

figure_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_figure)
  => Record attrs -> Array JSX
  -> JSX
figure_ = createChildishElement (unsafeCreateDOMComponent "figure")

type Props_footer =()

footer_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_footer)
  => Record attrs -> Array JSX
  -> JSX
footer_ = createChildishElement (unsafeCreateDOMComponent "footer")

type Props_form =
  ( accept :: String
  , action :: String
  , method :: String
  , name :: String
  , onChange :: EventHandler
  , onInput :: EventHandler
  , onInvalid :: EventHandler
  , onSubmit :: EventHandler
  , target :: String
  )

form_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_form)
  => Record attrs -> Array JSX
  -> JSX
form_ = createChildishElement (unsafeCreateDOMComponent "form")

type Props_h1 =()

h1_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h1)
  => Record attrs -> Array JSX
  -> JSX
h1_ = createChildishElement (unsafeCreateDOMComponent "h1")

type Props_h2 =()

h2_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h2)
  => Record attrs -> Array JSX
  -> JSX
h2_ = createChildishElement (unsafeCreateDOMComponent "h2")

type Props_h3 =()

h3_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h3)
  => Record attrs -> Array JSX
  -> JSX
h3_ = createChildishElement (unsafeCreateDOMComponent "h3")

type Props_h4 =()

h4_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h4)
  => Record attrs -> Array JSX
  -> JSX
h4_ = createChildishElement (unsafeCreateDOMComponent "h4")

type Props_h5 =()

h5_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h5)
  => Record attrs -> Array JSX
  -> JSX
h5_ = createChildishElement (unsafeCreateDOMComponent "h5")

type Props_h6 =()

h6_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h6)
  => Record attrs -> Array JSX
  -> JSX
h6_ = createChildishElement (unsafeCreateDOMComponent "h6")

type Props_head =
  ( profile :: String
  )

head_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_head)
  => Record attrs -> Array JSX
  -> JSX
head_ = createChildishElement (unsafeCreateDOMComponent "head")

type Props_header =()

header_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_header)
  => Record attrs -> Array JSX
  -> JSX
header_ = createChildishElement (unsafeCreateDOMComponent "header")

type Props_hgroup =()

hgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_hgroup)
  => Record attrs -> Array JSX
  -> JSX
hgroup_ = createChildishElement (unsafeCreateDOMComponent "hgroup")

type Props_hr =
  ( size :: Number
  , width :: String
  )

hr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_hr)
  => Record attrs
  -> JSX
hr_ = createElement (unsafeCreateDOMComponent "hr")

type Props_html =
  ( manifest :: String
  )

html_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_html)
  => Record attrs -> Array JSX
  -> JSX
html_ = createChildishElement (unsafeCreateDOMComponent "html")

type Props_i =()

i_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_i)
  => Record attrs -> Array JSX
  -> JSX
i_ = createChildishElement (unsafeCreateDOMComponent "i")

type Props_iframe =
  ( height :: String
  , name :: String
  , sandbox :: String
  , scrolling :: String
  , src :: String
  , width :: String
  )

iframe_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_iframe)
  => Record attrs -> Array JSX
  -> JSX
iframe_ = createChildishElement (unsafeCreateDOMComponent "iframe")

type Props_img =
  ( alt :: String
  , height :: String
  , name :: String
  , sizes :: String
  , src :: String
  , width :: String
  )

img_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_img)
  => Record attrs
  -> JSX
img_ = createElement (unsafeCreateDOMComponent "img")

type Props_input =
  ( accept :: String
  , alt :: String
  , autoCapitalize :: String
  , autoCorrect :: String
  , autoSave :: String
  , checked :: Boolean
  , defaultChecked :: String
  , defaultValue :: String
  , disabled :: Boolean
  , form :: String
  , height :: String
  , list :: String
  , max :: Number
  , min :: Number
  , multiple :: Boolean
  , name :: String
  , onChange :: EventHandler
  , pattern :: String
  , placeholder :: String
  , required :: Boolean
  , results :: String
  , size :: Number
  , src :: String
  , step :: String
  , title :: String
  , type :: String
  , value :: String
  , width :: String
  )

input_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_input)
  => Record attrs
  -> JSX
input_ = createElement (unsafeCreateDOMComponent "input")

type Props_ins =
  ( cite :: String
  )

ins_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ins)
  => Record attrs -> Array JSX
  -> JSX
ins_ = createChildishElement (unsafeCreateDOMComponent "ins")

type Props_kbd =()

kbd_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_kbd)
  => Record attrs -> Array JSX
  -> JSX
kbd_ = createChildishElement (unsafeCreateDOMComponent "kbd")

type Props_keygen =
  ( challenge :: String
  , disabled :: Boolean
  , form :: String
  , name :: String
  )

keygen_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_keygen)
  => Record attrs -> Array JSX
  -> JSX
keygen_ = createChildishElement (unsafeCreateDOMComponent "keygen")

type Props_label =
  ( form :: String
  )

label_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_label)
  => Record attrs -> Array JSX
  -> JSX
label_ = createChildishElement (unsafeCreateDOMComponent "label")

type Props_legend =()

legend_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_legend)
  => Record attrs -> Array JSX
  -> JSX
legend_ = createChildishElement (unsafeCreateDOMComponent "legend")

type Props_li =
  ( type :: String
  , value :: String
  )

li_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_li)
  => Record attrs -> Array JSX
  -> JSX
li_ = createChildishElement (unsafeCreateDOMComponent "li")

type Props_link =
  ( color :: String
  , href :: String
  , integrity :: String
  , media :: String
  , nonce :: String
  , rel :: String
  , scope :: String
  , sizes :: String
  , target :: String
  , title :: String
  , type :: String
  )

link_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_link)
  => Record attrs
  -> JSX
link_ = createElement (unsafeCreateDOMComponent "link")

type Props_main =()

main_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_main)
  => Record attrs -> Array JSX
  -> JSX
main_ = createChildishElement (unsafeCreateDOMComponent "main")

type Props_map =
  ( name :: String
  )

map_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_map)
  => Record attrs -> Array JSX
  -> JSX
map_ = createChildishElement (unsafeCreateDOMComponent "map")

type Props_mark =()

mark_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_mark)
  => Record attrs -> Array JSX
  -> JSX
mark_ = createChildishElement (unsafeCreateDOMComponent "mark")

type Props_math =()

math_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_math)
  => Record attrs -> Array JSX
  -> JSX
math_ = createChildishElement (unsafeCreateDOMComponent "math")

type Props_menu =()

menu_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_menu)
  => Record attrs -> Array JSX
  -> JSX
menu_ = createChildishElement (unsafeCreateDOMComponent "menu")

type Props_menuitem =()

menuitem_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_menuitem)
  => Record attrs -> Array JSX
  -> JSX
menuitem_ = createChildishElement (unsafeCreateDOMComponent "menuitem")

type Props_meta =
  ( content :: String
  , name :: String
  )

meta_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_meta)
  => Record attrs
  -> JSX
meta_ = createElement (unsafeCreateDOMComponent "meta")

type Props_meter =
  ( high :: String
  , low :: String
  , max :: Number
  , min :: Number
  , optimum :: String
  , value :: String
  )

meter_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_meter)
  => Record attrs -> Array JSX
  -> JSX
meter_ = createChildishElement (unsafeCreateDOMComponent "meter")

type Props_nav =()

nav_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_nav)
  => Record attrs -> Array JSX
  -> JSX
nav_ = createChildishElement (unsafeCreateDOMComponent "nav")

type Props_noscript =()

noscript_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_noscript)
  => Record attrs -> Array JSX
  -> JSX
noscript_ = createChildishElement (unsafeCreateDOMComponent "noscript")

type Props_object =
  ( data :: String
  , form :: String
  , height :: String
  , name :: String
  , type :: String
  , width :: String
  )

object_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_object)
  => Record attrs -> Array JSX
  -> JSX
object_ = createChildishElement (unsafeCreateDOMComponent "object")

type Props_ol =
  ( reversed :: Boolean
  , start :: Number
  , type :: String
  )

ol_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ol)
  => Record attrs -> Array JSX
  -> JSX
ol_ = createChildishElement (unsafeCreateDOMComponent "ol")

type Props_optgroup =
  ( disabled :: Boolean
  , label :: String
  )

optgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_optgroup)
  => Record attrs -> Array JSX
  -> JSX
optgroup_ = createChildishElement (unsafeCreateDOMComponent "optgroup")

type Props_option =
  ( disabled :: Boolean
  , label :: String
  , selected :: Boolean
  , value :: String
  )

option_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_option)
  => Record attrs -> Array JSX
  -> JSX
option_ = createChildishElement (unsafeCreateDOMComponent "option")

type Props_output =
  ( form :: String
  , name :: String
  )

output_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_output)
  => Record attrs -> Array JSX
  -> JSX
output_ = createChildishElement (unsafeCreateDOMComponent "output")

type Props_p =()

p_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_p)
  => Record attrs -> Array JSX
  -> JSX
p_ = createChildishElement (unsafeCreateDOMComponent "p")

type Props_param =
  ( name :: String
  , type :: String
  , value :: String
  )

param_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_param)
  => Record attrs
  -> JSX
param_ = createElement (unsafeCreateDOMComponent "param")

type Props_picture =()

picture_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_picture)
  => Record attrs -> Array JSX
  -> JSX
picture_ = createChildishElement (unsafeCreateDOMComponent "picture")

type Props_pre =
  ( width :: String
  )

pre_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_pre)
  => Record attrs -> Array JSX
  -> JSX
pre_ = createChildishElement (unsafeCreateDOMComponent "pre")

type Props_progress =
  ( max :: Number
  , value :: String
  )

progress_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_progress)
  => Record attrs -> Array JSX
  -> JSX
progress_ = createChildishElement (unsafeCreateDOMComponent "progress")

type Props_q =
  ( cite :: String
  )

q_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_q)
  => Record attrs -> Array JSX
  -> JSX
q_ = createChildishElement (unsafeCreateDOMComponent "q")

type Props_rb =()

rb_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rb)
  => Record attrs -> Array JSX
  -> JSX
rb_ = createChildishElement (unsafeCreateDOMComponent "rb")

type Props_rp =()

rp_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rp)
  => Record attrs -> Array JSX
  -> JSX
rp_ = createChildishElement (unsafeCreateDOMComponent "rp")

type Props_rt =()

rt_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rt)
  => Record attrs -> Array JSX
  -> JSX
rt_ = createChildishElement (unsafeCreateDOMComponent "rt")

type Props_rtc =()

rtc_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rtc)
  => Record attrs -> Array JSX
  -> JSX
rtc_ = createChildishElement (unsafeCreateDOMComponent "rtc")

type Props_ruby =()

ruby_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ruby)
  => Record attrs -> Array JSX
  -> JSX
ruby_ = createChildishElement (unsafeCreateDOMComponent "ruby")

type Props_s =()

s_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_s)
  => Record attrs -> Array JSX
  -> JSX
s_ = createChildishElement (unsafeCreateDOMComponent "s")

type Props_samp =()

samp_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_samp)
  => Record attrs -> Array JSX
  -> JSX
samp_ = createChildishElement (unsafeCreateDOMComponent "samp")

type Props_script =
  ( async :: Boolean
  , defer :: Boolean
  , integrity :: String
  , nonce :: String
  , src :: String
  , type :: String
  )

script_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_script)
  => Record attrs -> Array JSX
  -> JSX
script_ = createChildishElement (unsafeCreateDOMComponent "script")

type Props_section =()

section_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_section)
  => Record attrs -> Array JSX
  -> JSX
section_ = createChildishElement (unsafeCreateDOMComponent "section")

type Props_select =
  ( defaultValue :: String
  , disabled :: Boolean
  , form :: String
  , multiple :: Boolean
  , name :: String
  , onChange :: EventHandler
  , required :: Boolean
  , size :: Number
  , value :: String
  )

select_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_select)
  => Record attrs -> Array JSX
  -> JSX
select_ = createChildishElement (unsafeCreateDOMComponent "select")

type Props_slot =
  ( name :: String
  )

slot_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_slot)
  => Record attrs -> Array JSX
  -> JSX
slot_ = createChildishElement (unsafeCreateDOMComponent "slot")

type Props_small =()

small_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_small)
  => Record attrs -> Array JSX
  -> JSX
small_ = createChildishElement (unsafeCreateDOMComponent "small")

type Props_source =
  ( media :: String
  , sizes :: String
  , src :: String
  , type :: String
  )

source_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_source)
  => Record attrs
  -> JSX
source_ = createElement (unsafeCreateDOMComponent "source")

type Props_span =()

span_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_span)
  => Record attrs -> Array JSX
  -> JSX
span_ = createChildishElement (unsafeCreateDOMComponent "span")

type Props_strong =()

strong_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_strong)
  => Record attrs -> Array JSX
  -> JSX
strong_ = createChildishElement (unsafeCreateDOMComponent "strong")

type Props_style =
  ( media :: String
  , nonce :: String
  , title :: String
  , type :: String
  )

style_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_style)
  => Record attrs -> Array JSX
  -> JSX
style_ = createChildishElement (unsafeCreateDOMComponent "style")

type Props_sub =()

sub_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_sub)
  => Record attrs -> Array JSX
  -> JSX
sub_ = createChildishElement (unsafeCreateDOMComponent "sub")

type Props_summary =()

summary_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_summary)
  => Record attrs -> Array JSX
  -> JSX
summary_ = createChildishElement (unsafeCreateDOMComponent "summary")

type Props_sup =()

sup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_sup)
  => Record attrs -> Array JSX
  -> JSX
sup_ = createChildishElement (unsafeCreateDOMComponent "sup")

type Props_svg =
  ( accentHeight :: String
  , accumulate :: String
  , additive :: String
  , alignmentBaseline :: String
  , allowReorder :: String
  , alphabetic :: String
  , amplitude :: String
  , arabicForm :: String
  , ascent :: String
  , attributeName :: String
  , attributeType :: String
  , autoReverse :: String
  , azimuth :: String
  , baseFrequency :: String
  , baseProfile :: String
  , baselineShift :: String
  , bbox :: String
  , begin :: String
  , bias :: String
  , by :: String
  , calcMode :: String
  , capHeight :: String
  , clip :: String
  , clipPath :: String
  , clipPathUnits :: String
  , clipRule :: String
  , color :: String
  , colorInterpolation :: String
  , colorInterpolationFilters :: String
  , colorProfile :: String
  , colorRendering :: String
  , contentScriptType :: String
  , contentStyleType :: String
  , cursor :: String
  , cx :: String
  , cy :: String
  , d :: String
  , decelerate :: String
  , descent :: String
  , diffuseConstant :: String
  , direction :: String
  , display :: String
  , divisor :: String
  , dominantBaseline :: String
  , dur :: String
  , dx :: String
  , dy :: String
  , edgeMode :: String
  , elevation :: String
  , enableBackground :: String
  , end :: String
  , exponent :: String
  , externalResourcesRequired :: String
  , fill :: String
  , fillOpacity :: String
  , fillRule :: String
  , filter :: String
  , filterRes :: String
  , filterUnits :: String
  , floodColor :: String
  , floodOpacity :: String
  , focusable :: String
  , fontFamily :: String
  , fontSize :: String
  , fontSizeAdjust :: String
  , fontStretch :: String
  , fontStyle :: String
  , fontVariant :: String
  , fontWeight :: String
  , format :: String
  , from :: String
  , fx :: String
  , fy :: String
  , g1 :: String
  , g2 :: String
  , glyphName :: String
  , glyphOrientationHorizontal :: String
  , glyphOrientationVertical :: String
  , glyphRef :: String
  , gradientTransform :: String
  , gradientUnits :: String
  , hanging :: String
  , height :: String
  , horizAdvX :: String
  , horizOriginX :: String
  , ideographic :: String
  , imageRendering :: String
  , in :: String
  , in2 :: String
  , intercept :: String
  , k :: String
  , k1 :: String
  , k2 :: String
  , k3 :: String
  , k4 :: String
  , kernelMatrix :: String
  , kernelUnitLength :: String
  , kerning :: String
  , keyPoints :: String
  , keySplines :: String
  , keyTimes :: String
  , lengthAdjust :: String
  , letterSpacing :: String
  , lightingColor :: String
  , limitingConeAngle :: String
  , local :: String
  , markerEnd :: String
  , markerHeight :: String
  , markerMid :: String
  , markerStart :: String
  , markerUnits :: String
  , markerWidth :: String
  , mask :: String
  , maskContentUnits :: String
  , maskUnits :: String
  , mathematical :: String
  , mode :: String
  , numOctaves :: String
  , offset :: String
  , opacity :: String
  , operator :: String
  , order :: String
  , orient :: String
  , orientation :: String
  , origin :: String
  , overflow :: String
  , overlinePosition :: String
  , overlineThickness :: String
  , paintOrder :: String
  , panose1 :: String
  , pathLength :: String
  , patternContentUnits :: String
  , patternTransform :: String
  , patternUnits :: String
  , pointerEvents :: String
  , points :: String
  , pointsAtX :: String
  , pointsAtY :: String
  , pointsAtZ :: String
  , preserveAlpha :: String
  , preserveAspectRatio :: String
  , primitiveUnits :: String
  , r :: String
  , radius :: String
  , refX :: String
  , refY :: String
  , renderingIntent :: String
  , repeatCount :: String
  , repeatDur :: String
  , requiredExtensions :: String
  , requiredFeatures :: String
  , restart :: String
  , result :: String
  , rotate :: String
  , rx :: String
  , ry :: String
  , scale :: String
  , seed :: String
  , shapeRendering :: String
  , slope :: String
  , spacing :: String
  , specularConstant :: String
  , specularExponent :: String
  , speed :: String
  , spreadMethod :: String
  , startOffset :: String
  , stdDeviation :: String
  , stemh :: String
  , stemv :: String
  , stitchTiles :: String
  , stopColor :: String
  , stopOpacity :: String
  , strikethroughPosition :: String
  , strikethroughThickness :: String
  , string :: String
  , stroke :: String
  , strokeDasharray :: String
  , strokeDashoffset :: String
  , strokeLinecap :: String
  , strokeLinejoin :: String
  , strokeMiterlimit :: String
  , strokeOpacity :: String
  , strokeWidth :: String
  , surfaceScale :: String
  , systemLanguage :: String
  , tableValues :: String
  , targetX :: String
  , targetY :: String
  , textAnchor :: String
  , textDecoration :: String
  , textLength :: String
  , textRendering :: String
  , to :: String
  , transform :: String
  , u1 :: String
  , u2 :: String
  , underlinePosition :: String
  , underlineThickness :: String
  , unicode :: String
  , unicodeBidi :: String
  , unicodeRange :: String
  , unitsPerEm :: String
  , vAlphabetic :: String
  , vHanging :: String
  , vIdeographic :: String
  , vMathematical :: String
  , values :: String
  , vectorEffect :: String
  , version :: String
  , vertAdvY :: String
  , vertOriginX :: String
  , vertOriginY :: String
  , viewBox :: String
  , viewTarget :: String
  , visibility :: String
  , width :: String
  , widths :: String
  , wordSpacing :: String
  , writingMode :: String
  , x :: String
  , x1 :: String
  , x2 :: String
  , xChannelSelector :: String
  , xHeight :: String
  , xlinkActuate :: String
  , xlinkArcrole :: String
  , xlinkHref :: String
  , xlinkRole :: String
  , xlinkShow :: String
  , xlinkTitle :: String
  , xlinkType :: String
  , xmlBase :: String
  , xmlLang :: String
  , xmlSpace :: String
  , xmlns :: String
  , xmlnsXlink :: String
  , y :: String
  , y1 :: String
  , y2 :: String
  , yChannelSelector :: String
  , z :: String
  , zoomAndPan :: String
  )

svg_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_svg)
  => Record attrs -> Array JSX
  -> JSX
svg_ = createChildishElement (unsafeCreateDOMComponent "svg")

type Props_table =
  ( summary :: String
  , width :: String
  )

table_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_table)
  => Record attrs -> Array JSX
  -> JSX
table_ = createChildishElement (unsafeCreateDOMComponent "table")

type Props_tbody =()

tbody_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tbody)
  => Record attrs -> Array JSX
  -> JSX
tbody_ = createChildishElement (unsafeCreateDOMComponent "tbody")

type Props_td =
  ( headers :: String
  , height :: String
  , scope :: String
  , width :: String
  )

td_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_td)
  => Record attrs -> Array JSX
  -> JSX
td_ = createChildishElement (unsafeCreateDOMComponent "td")

type Props_template =()

template_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_template)
  => Record attrs -> Array JSX
  -> JSX
template_ = createChildishElement (unsafeCreateDOMComponent "template")

type Props_textarea =
  ( autoCapitalize :: String
  , autoCorrect :: String
  , cols :: Number
  , defaultValue :: String
  , disabled :: Boolean
  , form :: String
  , name :: String
  , onChange :: EventHandler
  , placeholder :: String
  , required :: Boolean
  , rows :: Number
  , value :: String
  , wrap :: String
  )

textarea_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_textarea)
  => Record attrs -> Array JSX
  -> JSX
textarea_ = createChildishElement (unsafeCreateDOMComponent "textarea")

type Props_tfoot =()

tfoot_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tfoot)
  => Record attrs -> Array JSX
  -> JSX
tfoot_ = createChildishElement (unsafeCreateDOMComponent "tfoot")

type Props_th =
  ( headers :: String
  , height :: String
  , scope :: String
  , width :: String
  )

th_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_th)
  => Record attrs -> Array JSX
  -> JSX
th_ = createChildishElement (unsafeCreateDOMComponent "th")

type Props_thead =()

thead_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_thead)
  => Record attrs -> Array JSX
  -> JSX
thead_ = createChildishElement (unsafeCreateDOMComponent "thead")

type Props_time =()

time_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_time)
  => Record attrs -> Array JSX
  -> JSX
time_ = createChildishElement (unsafeCreateDOMComponent "time")

type Props_title =()

title_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_title)
  => Record attrs -> Array JSX
  -> JSX
title_ = createChildishElement (unsafeCreateDOMComponent "title")

type Props_tr =()

tr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tr)
  => Record attrs -> Array JSX
  -> JSX
tr_ = createChildishElement (unsafeCreateDOMComponent "tr")

type Props_track =
  ( default :: Boolean
  , kind :: String
  , label :: String
  , src :: String
  )

track_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_track)
  => Record attrs
  -> JSX
track_ = createElement (unsafeCreateDOMComponent "track")

type Props_u =()

u_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_u)
  => Record attrs -> Array JSX
  -> JSX
u_ = createChildishElement (unsafeCreateDOMComponent "u")

type Props_ul =
  ( type :: String
  )

ul_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ul)
  => Record attrs -> Array JSX
  -> JSX
ul_ = createChildishElement (unsafeCreateDOMComponent "ul")

type Props_var =()

var_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_var)
  => Record attrs -> Array JSX
  -> JSX
var_ = createChildishElement (unsafeCreateDOMComponent "var")

type Props_video =
  ( controls :: Boolean
  , height :: String
  , loop :: Boolean
  , muted :: Boolean
  , playsInline :: Boolean
  , poster :: String
  , preload :: String
  , src :: String
  , width :: String
  )

video_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_video)
  => Record attrs -> Array JSX
  -> JSX
video_ = createChildishElement (unsafeCreateDOMComponent "video")

type Props_wbr =()

wbr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_wbr)
  => Record attrs
  -> JSX
wbr_ = createElement (unsafeCreateDOMComponent "wbr")

