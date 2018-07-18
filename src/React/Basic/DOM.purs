-- | This module defines helper functions for creating virtual DOM elements
-- | safely.
-- |
-- | Note: DOM element props are provided as records, and checked using `Union`
-- | constraints. This means that we don't need to provide all props, but any we
-- | do provide must have the correct types.

module React.Basic.DOM where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, createElement, createVoidElement)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

-- | Create a text node.
text :: String -> JSX
text = unsafeCoerce

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | E.g.
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Merge styles from right to left. Uses `Object.assign`.
-- |
-- | E.g.
-- |
-- | ```
-- | style: mergeCSS [ (css { padding: "5px" }), props.style ]
-- | ```
foreign import mergeStyles :: Array CSS -> CSS

-- | Standard props which are shared by all DOM elements.
type SharedProps specific =
  -- | `key` is not really a DOM attribute - React intercepts it
  ( key               :: String

  , about             :: String
  , acceptCharset     :: String
  , accessKey         :: String
  , allowFullScreen   :: Boolean
  , allowTransparency :: String
  , autoComplete      :: String
  , autoFocus         :: String
  , autoPlay          :: Boolean
  , capture           :: Boolean
  , cellPadding       :: String
  , cellSpacing       :: String
  , charSet           :: String
  , classID           :: String
  , className         :: String
  , colSpan           :: Number
  , contentEditable   :: String
  , contextMenu       :: String
  , crossOrigin       :: String
  , datatype          :: String
  , dateTime          :: String
  , dir               :: String
  , draggable         :: String
  , encType           :: String
  , formAction        :: String
  , formEncType       :: String
  , formMethod        :: String
  , formNoValidate    :: String
  , formTarget        :: String
  , frameBorder       :: String
  , hidden            :: Boolean
  , hrefLang          :: String
  , htmlFor           :: String
  , httpEquiv         :: String
  , icon              :: String
  , id                :: String
  , inlist            :: String
  , inputMode         :: String
  , is                :: String
  , itemID            :: String
  , itemProp          :: String
  , itemRef           :: String
  , itemScope         :: Boolean
  , itemType          :: String
  , keyParams         :: String
  , keyType           :: String
  , lang              :: String
  , marginHeight      :: String
  , marginWidth       :: String
  , maxLength         :: String
  , mediaGroup        :: String
  , minLength         :: String
  , noValidate        :: String
  , prefix            :: String
  , property          :: String
  , radioGroup        :: String
  , readOnly          :: Boolean
  , resource          :: String
  , role              :: String
  , rowSpan           :: Number
  , scoped            :: Boolean
  , seamless          :: Boolean
  , security          :: String
  , spellCheck        :: String
  , srcDoc            :: String
  , srcLang           :: String
  , srcSet            :: String
  , style             :: CSS
  , tabIndex          :: String
  , title             :: String
  , typeof            :: String
  , unselectable      :: String
  , useMap            :: String
  , vocab             :: String
  , wmode             :: String
  , onClick           :: EventHandler
  -- TODO: add more common event handlers
  | specific
  )

unsafeCreateDOMComponent :: forall props. String -> ReactComponent props
unsafeCreateDOMComponent = unsafeCoerce


-- | -------------------------------
-- | GENERATED CODE BELOW THIS LINE!
-- | -------------------------------

type Props_a =
  ( coords :: String
  , download :: String
  , href :: String
  , name :: String
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
a_ = createElement (unsafeCreateDOMComponent "a")

type Props_abbr =
  ( title :: String
  )

abbr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_abbr)
  => Record attrs -> Array JSX
  -> JSX
abbr_ = createElement (unsafeCreateDOMComponent "abbr")

type Props_address =()

address_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_address)
  => Record attrs -> Array JSX
  -> JSX
address_ = createElement (unsafeCreateDOMComponent "address")

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
area_ = createVoidElement (unsafeCreateDOMComponent "area")

type Props_article =()

article_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_article)
  => Record attrs -> Array JSX
  -> JSX
article_ = createElement (unsafeCreateDOMComponent "article")

type Props_aside =()

aside_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_aside)
  => Record attrs -> Array JSX
  -> JSX
aside_ = createElement (unsafeCreateDOMComponent "aside")

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
audio_ = createElement (unsafeCreateDOMComponent "audio")

type Props_b =()

b_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_b)
  => Record attrs -> Array JSX
  -> JSX
b_ = createElement (unsafeCreateDOMComponent "b")

type Props_base =
  ( href :: String
  , target :: String
  )

base_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_base)
  => Record attrs 
  -> JSX
base_ = createVoidElement (unsafeCreateDOMComponent "base")

type Props_bdi =()

bdi_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_bdi)
  => Record attrs -> Array JSX
  -> JSX
bdi_ = createElement (unsafeCreateDOMComponent "bdi")

type Props_bdo =
  ( dir :: String
  )

bdo_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_bdo)
  => Record attrs -> Array JSX
  -> JSX
bdo_ = createElement (unsafeCreateDOMComponent "bdo")

type Props_blockquote =
  ( cite :: String
  )

blockquote_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_blockquote)
  => Record attrs -> Array JSX
  -> JSX
blockquote_ = createElement (unsafeCreateDOMComponent "blockquote")

type Props_body =()

body_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_body)
  => Record attrs -> Array JSX
  -> JSX
body_ = createElement (unsafeCreateDOMComponent "body")

type Props_br =()

br_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_br)
  => Record attrs 
  -> JSX
br_ = createVoidElement (unsafeCreateDOMComponent "br")

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
button_ = createElement (unsafeCreateDOMComponent "button")

type Props_canvas =
  ( height :: String
  , width :: String
  )

canvas_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_canvas)
  => Record attrs -> Array JSX
  -> JSX
canvas_ = createElement (unsafeCreateDOMComponent "canvas")

type Props_caption =()

caption_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_caption)
  => Record attrs -> Array JSX
  -> JSX
caption_ = createElement (unsafeCreateDOMComponent "caption")

type Props_cite =()

cite_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_cite)
  => Record attrs -> Array JSX
  -> JSX
cite_ = createElement (unsafeCreateDOMComponent "cite")

type Props_code =()

code_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_code)
  => Record attrs -> Array JSX
  -> JSX
code_ = createElement (unsafeCreateDOMComponent "code")

type Props_col =
  ( span :: Number
  , width :: String
  )

col_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_col)
  => Record attrs 
  -> JSX
col_ = createVoidElement (unsafeCreateDOMComponent "col")

type Props_colgroup =
  ( span :: Number
  , width :: String
  )

colgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_colgroup)
  => Record attrs -> Array JSX
  -> JSX
colgroup_ = createElement (unsafeCreateDOMComponent "colgroup")

type Props_data =
  ( value :: String
  )

data_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_data)
  => Record attrs -> Array JSX
  -> JSX
data_ = createElement (unsafeCreateDOMComponent "data")

type Props_datalist =()

datalist_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_datalist)
  => Record attrs -> Array JSX
  -> JSX
datalist_ = createElement (unsafeCreateDOMComponent "datalist")

type Props_dd =()

dd_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dd)
  => Record attrs -> Array JSX
  -> JSX
dd_ = createElement (unsafeCreateDOMComponent "dd")

type Props_del =
  ( cite :: String
  )

del_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_del)
  => Record attrs -> Array JSX
  -> JSX
del_ = createElement (unsafeCreateDOMComponent "del")

type Props_details =
  ( open :: Boolean
  )

details_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_details)
  => Record attrs -> Array JSX
  -> JSX
details_ = createElement (unsafeCreateDOMComponent "details")

type Props_dfn =
  ( title :: String
  )

dfn_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dfn)
  => Record attrs -> Array JSX
  -> JSX
dfn_ = createElement (unsafeCreateDOMComponent "dfn")

type Props_dialog =
  ( open :: Boolean
  )

dialog_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dialog)
  => Record attrs -> Array JSX
  -> JSX
dialog_ = createElement (unsafeCreateDOMComponent "dialog")

type Props_div =()

div_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_div)
  => Record attrs -> Array JSX
  -> JSX
div_ = createElement (unsafeCreateDOMComponent "div")

type Props_dl =()

dl_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dl)
  => Record attrs -> Array JSX
  -> JSX
dl_ = createElement (unsafeCreateDOMComponent "dl")

type Props_dt =()

dt_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_dt)
  => Record attrs -> Array JSX
  -> JSX
dt_ = createElement (unsafeCreateDOMComponent "dt")

type Props_em =()

em_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_em)
  => Record attrs -> Array JSX
  -> JSX
em_ = createElement (unsafeCreateDOMComponent "em")

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
embed_ = createVoidElement (unsafeCreateDOMComponent "embed")

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
fieldset_ = createElement (unsafeCreateDOMComponent "fieldset")

type Props_figcaption =()

figcaption_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_figcaption)
  => Record attrs -> Array JSX
  -> JSX
figcaption_ = createElement (unsafeCreateDOMComponent "figcaption")

type Props_figure =()

figure_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_figure)
  => Record attrs -> Array JSX
  -> JSX
figure_ = createElement (unsafeCreateDOMComponent "figure")

type Props_footer =()

footer_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_footer)
  => Record attrs -> Array JSX
  -> JSX
footer_ = createElement (unsafeCreateDOMComponent "footer")

type Props_form =
  ( accept :: String
  , action :: String
  , method :: String
  , name :: String
  , target :: String
  )

form_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_form)
  => Record attrs -> Array JSX
  -> JSX
form_ = createElement (unsafeCreateDOMComponent "form")

type Props_h1 =()

h1_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h1)
  => Record attrs -> Array JSX
  -> JSX
h1_ = createElement (unsafeCreateDOMComponent "h1")

type Props_h2 =()

h2_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h2)
  => Record attrs -> Array JSX
  -> JSX
h2_ = createElement (unsafeCreateDOMComponent "h2")

type Props_h3 =()

h3_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h3)
  => Record attrs -> Array JSX
  -> JSX
h3_ = createElement (unsafeCreateDOMComponent "h3")

type Props_h4 =()

h4_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h4)
  => Record attrs -> Array JSX
  -> JSX
h4_ = createElement (unsafeCreateDOMComponent "h4")

type Props_h5 =()

h5_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h5)
  => Record attrs -> Array JSX
  -> JSX
h5_ = createElement (unsafeCreateDOMComponent "h5")

type Props_h6 =()

h6_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_h6)
  => Record attrs -> Array JSX
  -> JSX
h6_ = createElement (unsafeCreateDOMComponent "h6")

type Props_head =
  ( profile :: String
  )

head_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_head)
  => Record attrs -> Array JSX
  -> JSX
head_ = createElement (unsafeCreateDOMComponent "head")

type Props_header =()

header_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_header)
  => Record attrs -> Array JSX
  -> JSX
header_ = createElement (unsafeCreateDOMComponent "header")

type Props_hgroup =()

hgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_hgroup)
  => Record attrs -> Array JSX
  -> JSX
hgroup_ = createElement (unsafeCreateDOMComponent "hgroup")

type Props_hr =
  ( size :: Number
  , width :: String
  )

hr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_hr)
  => Record attrs 
  -> JSX
hr_ = createVoidElement (unsafeCreateDOMComponent "hr")

type Props_html =
  ( manifest :: String
  )

html_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_html)
  => Record attrs -> Array JSX
  -> JSX
html_ = createElement (unsafeCreateDOMComponent "html")

type Props_i =()

i_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_i)
  => Record attrs -> Array JSX
  -> JSX
i_ = createElement (unsafeCreateDOMComponent "i")

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
iframe_ = createElement (unsafeCreateDOMComponent "iframe")

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
img_ = createVoidElement (unsafeCreateDOMComponent "img")

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
input_ = createVoidElement (unsafeCreateDOMComponent "input")

type Props_ins =
  ( cite :: String
  )

ins_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ins)
  => Record attrs -> Array JSX
  -> JSX
ins_ = createElement (unsafeCreateDOMComponent "ins")

type Props_kbd =()

kbd_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_kbd)
  => Record attrs -> Array JSX
  -> JSX
kbd_ = createElement (unsafeCreateDOMComponent "kbd")

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
keygen_ = createElement (unsafeCreateDOMComponent "keygen")

type Props_label =
  ( form :: String
  )

label_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_label)
  => Record attrs -> Array JSX
  -> JSX
label_ = createElement (unsafeCreateDOMComponent "label")

type Props_legend =()

legend_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_legend)
  => Record attrs -> Array JSX
  -> JSX
legend_ = createElement (unsafeCreateDOMComponent "legend")

type Props_li =
  ( type :: String
  , value :: String
  )

li_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_li)
  => Record attrs -> Array JSX
  -> JSX
li_ = createElement (unsafeCreateDOMComponent "li")

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
link_ = createVoidElement (unsafeCreateDOMComponent "link")

type Props_main =()

main_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_main)
  => Record attrs -> Array JSX
  -> JSX
main_ = createElement (unsafeCreateDOMComponent "main")

type Props_map =
  ( name :: String
  )

map_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_map)
  => Record attrs -> Array JSX
  -> JSX
map_ = createElement (unsafeCreateDOMComponent "map")

type Props_mark =()

mark_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_mark)
  => Record attrs -> Array JSX
  -> JSX
mark_ = createElement (unsafeCreateDOMComponent "mark")

type Props_math =()

math_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_math)
  => Record attrs -> Array JSX
  -> JSX
math_ = createElement (unsafeCreateDOMComponent "math")

type Props_menu =()

menu_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_menu)
  => Record attrs -> Array JSX
  -> JSX
menu_ = createElement (unsafeCreateDOMComponent "menu")

type Props_menuitem =()

menuitem_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_menuitem)
  => Record attrs -> Array JSX
  -> JSX
menuitem_ = createElement (unsafeCreateDOMComponent "menuitem")

type Props_meta =
  ( content :: String
  , name :: String
  )

meta_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_meta)
  => Record attrs 
  -> JSX
meta_ = createVoidElement (unsafeCreateDOMComponent "meta")

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
meter_ = createElement (unsafeCreateDOMComponent "meter")

type Props_nav =()

nav_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_nav)
  => Record attrs -> Array JSX
  -> JSX
nav_ = createElement (unsafeCreateDOMComponent "nav")

type Props_noscript =()

noscript_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_noscript)
  => Record attrs -> Array JSX
  -> JSX
noscript_ = createElement (unsafeCreateDOMComponent "noscript")

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
object_ = createElement (unsafeCreateDOMComponent "object")

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
ol_ = createElement (unsafeCreateDOMComponent "ol")

type Props_optgroup =
  ( disabled :: Boolean
  , label :: String
  )

optgroup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_optgroup)
  => Record attrs -> Array JSX
  -> JSX
optgroup_ = createElement (unsafeCreateDOMComponent "optgroup")

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
option_ = createElement (unsafeCreateDOMComponent "option")

type Props_output =
  ( form :: String
  , name :: String
  )

output_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_output)
  => Record attrs -> Array JSX
  -> JSX
output_ = createElement (unsafeCreateDOMComponent "output")

type Props_p =()

p_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_p)
  => Record attrs -> Array JSX
  -> JSX
p_ = createElement (unsafeCreateDOMComponent "p")

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
param_ = createVoidElement (unsafeCreateDOMComponent "param")

type Props_picture =()

picture_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_picture)
  => Record attrs -> Array JSX
  -> JSX
picture_ = createElement (unsafeCreateDOMComponent "picture")

type Props_pre =
  ( width :: String
  )

pre_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_pre)
  => Record attrs -> Array JSX
  -> JSX
pre_ = createElement (unsafeCreateDOMComponent "pre")

type Props_progress =
  ( max :: Number
  , value :: String
  )

progress_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_progress)
  => Record attrs -> Array JSX
  -> JSX
progress_ = createElement (unsafeCreateDOMComponent "progress")

type Props_q =
  ( cite :: String
  )

q_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_q)
  => Record attrs -> Array JSX
  -> JSX
q_ = createElement (unsafeCreateDOMComponent "q")

type Props_rb =()

rb_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rb)
  => Record attrs -> Array JSX
  -> JSX
rb_ = createElement (unsafeCreateDOMComponent "rb")

type Props_rp =()

rp_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rp)
  => Record attrs -> Array JSX
  -> JSX
rp_ = createElement (unsafeCreateDOMComponent "rp")

type Props_rt =()

rt_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rt)
  => Record attrs -> Array JSX
  -> JSX
rt_ = createElement (unsafeCreateDOMComponent "rt")

type Props_rtc =()

rtc_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_rtc)
  => Record attrs -> Array JSX
  -> JSX
rtc_ = createElement (unsafeCreateDOMComponent "rtc")

type Props_ruby =()

ruby_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ruby)
  => Record attrs -> Array JSX
  -> JSX
ruby_ = createElement (unsafeCreateDOMComponent "ruby")

type Props_s =()

s_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_s)
  => Record attrs -> Array JSX
  -> JSX
s_ = createElement (unsafeCreateDOMComponent "s")

type Props_samp =()

samp_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_samp)
  => Record attrs -> Array JSX
  -> JSX
samp_ = createElement (unsafeCreateDOMComponent "samp")

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
script_ = createElement (unsafeCreateDOMComponent "script")

type Props_section =()

section_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_section)
  => Record attrs -> Array JSX
  -> JSX
section_ = createElement (unsafeCreateDOMComponent "section")

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
select_ = createElement (unsafeCreateDOMComponent "select")

type Props_slot =
  ( name :: String
  )

slot_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_slot)
  => Record attrs -> Array JSX
  -> JSX
slot_ = createElement (unsafeCreateDOMComponent "slot")

type Props_small =()

small_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_small)
  => Record attrs -> Array JSX
  -> JSX
small_ = createElement (unsafeCreateDOMComponent "small")

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
source_ = createVoidElement (unsafeCreateDOMComponent "source")

type Props_span =()

span_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_span)
  => Record attrs -> Array JSX
  -> JSX
span_ = createElement (unsafeCreateDOMComponent "span")

type Props_strong =()

strong_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_strong)
  => Record attrs -> Array JSX
  -> JSX
strong_ = createElement (unsafeCreateDOMComponent "strong")

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
style_ = createElement (unsafeCreateDOMComponent "style")

type Props_sub =()

sub_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_sub)
  => Record attrs -> Array JSX
  -> JSX
sub_ = createElement (unsafeCreateDOMComponent "sub")

type Props_summary =()

summary_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_summary)
  => Record attrs -> Array JSX
  -> JSX
summary_ = createElement (unsafeCreateDOMComponent "summary")

type Props_sup =()

sup_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_sup)
  => Record attrs -> Array JSX
  -> JSX
sup_ = createElement (unsafeCreateDOMComponent "sup")

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
svg_ = createElement (unsafeCreateDOMComponent "svg")

type Props_table =
  ( summary :: String
  , width :: String
  )

table_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_table)
  => Record attrs -> Array JSX
  -> JSX
table_ = createElement (unsafeCreateDOMComponent "table")

type Props_tbody =()

tbody_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tbody)
  => Record attrs -> Array JSX
  -> JSX
tbody_ = createElement (unsafeCreateDOMComponent "tbody")

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
td_ = createElement (unsafeCreateDOMComponent "td")

type Props_template =()

template_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_template)
  => Record attrs -> Array JSX
  -> JSX
template_ = createElement (unsafeCreateDOMComponent "template")

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
textarea_ = createElement (unsafeCreateDOMComponent "textarea")

type Props_tfoot =()

tfoot_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tfoot)
  => Record attrs -> Array JSX
  -> JSX
tfoot_ = createElement (unsafeCreateDOMComponent "tfoot")

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
th_ = createElement (unsafeCreateDOMComponent "th")

type Props_thead =()

thead_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_thead)
  => Record attrs -> Array JSX
  -> JSX
thead_ = createElement (unsafeCreateDOMComponent "thead")

type Props_time =()

time_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_time)
  => Record attrs -> Array JSX
  -> JSX
time_ = createElement (unsafeCreateDOMComponent "time")

type Props_title =()

title_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_title)
  => Record attrs -> Array JSX
  -> JSX
title_ = createElement (unsafeCreateDOMComponent "title")

type Props_tr =()

tr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_tr)
  => Record attrs -> Array JSX
  -> JSX
tr_ = createElement (unsafeCreateDOMComponent "tr")

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
track_ = createVoidElement (unsafeCreateDOMComponent "track")

type Props_u =()

u_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_u)
  => Record attrs -> Array JSX
  -> JSX
u_ = createElement (unsafeCreateDOMComponent "u")

type Props_ul =
  ( type :: String
  )

ul_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_ul)
  => Record attrs -> Array JSX
  -> JSX
ul_ = createElement (unsafeCreateDOMComponent "ul")

type Props_var =()

var_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_var)
  => Record attrs -> Array JSX
  -> JSX
var_ = createElement (unsafeCreateDOMComponent "var")

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
video_ = createElement (unsafeCreateDOMComponent "video")

type Props_wbr =()

wbr_
  :: forall attrs attrs_
   . Union attrs attrs_ (SharedProps Props_wbr)
  => Record attrs 
  -> JSX
wbr_ = createVoidElement (unsafeCreateDOMComponent "wbr")

