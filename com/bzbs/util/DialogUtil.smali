.class public Lcom/bzbs/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static gIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/bzbs/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/DialogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/util/DialogUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "is_auto_login_fb"    # Z

    .prologue
    .line 286
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 288
    .local v1, "dialogConfirm":Landroid/app/Dialog;
    const v9, 0x7f040106

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 290
    const v9, 0x7f1000b6

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 291
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f100151

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 292
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f10054a

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 293
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f100524

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 294
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f10054b

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 295
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f10054c

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 297
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 298
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 299
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 305
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 306
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const/4 v9, 0x1

    if-ne p2, v9, :cond_88

    .line 311
    const v9, 0x7f09031b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_88
    new-instance v9, Lcom/bzbs/util/DialogUtil$7;

    invoke-direct {v9, v1, v4, p0, p2}, Lcom/bzbs/util/DialogUtil$7;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    new-instance v9, Lcom/bzbs/util/DialogUtil$8;

    invoke-direct {v9, v1}, Lcom/bzbs/util/DialogUtil$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 334
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 335
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 337
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 338
    return-void
.end method

.method public static showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V
    .registers 25
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "campaign"    # Lcom/bzbs/bean/Campaign;
    .param p3, "paramNFCTag"    # Lcom/bzbs/bean/NFCTag;

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_197

    .line 197
    new-instance v9, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 199
    .local v9, "dialogSerial":Landroid/app/Dialog;
    const v3, 0x7f0400fc

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 201
    const v3, 0x7f100162

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 202
    .local v16, "layoutHeader":Landroid/widget/RelativeLayout;
    const v3, 0x7f100239

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 203
    .local v12, "imgCampaign":Landroid/widget/ImageView;
    const v3, 0x7f100252

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 204
    .local v18, "tvCampaign":Landroid/widget/TextView;
    const v3, 0x7f100268

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 205
    .local v2, "webPrivilegeMessage":Landroid/webkit/WebView;
    const v3, 0x7f100259

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 206
    .local v13, "imgClose":Landroid/widget/ImageView;
    const v3, 0x7f100529

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 207
    .local v14, "imgContinue":Landroid/widget/ImageView;
    const v3, 0x7f100156

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 208
    .local v19, "tvClose":Landroid/widget/TextView;
    const v3, 0x7f10052a

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 210
    .local v20, "tvContinue":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    .line 211
    .local v10, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 219
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<font size=\'+2\'>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</font><br>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 242
    .local v17, "str_message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "<font size=\'+1\'>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</font>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, "head":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<html>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "<body>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "</body></html>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "htmlData":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "api/campaign/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/picture"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, "img_campaign":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 251
    new-instance v3, Lcom/bzbs/util/DialogUtil$5;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v3, v9, v0, v1}, Lcom/bzbs/util/DialogUtil$5;-><init>(Landroid/app/Dialog;Lcom/bzbs/bean/Campaign;Landroid/app/Activity;)V

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v3, Lcom/bzbs/util/DialogUtil$6;

    invoke-direct {v3, v9}, Lcom/bzbs/util/DialogUtil$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 278
    .local v8, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 279
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 281
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 283
    .end local v2    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .end local v4    # "htmlData":Ljava/lang/String;
    .end local v8    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "dialogSerial":Landroid/app/Dialog;
    .end local v10    # "font":Landroid/graphics/Typeface;
    .end local v11    # "head":Ljava/lang/String;
    .end local v12    # "imgCampaign":Landroid/widget/ImageView;
    .end local v13    # "imgClose":Landroid/widget/ImageView;
    .end local v14    # "imgContinue":Landroid/widget/ImageView;
    .end local v15    # "img_campaign":Ljava/lang/String;
    .end local v16    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v17    # "str_message":Ljava/lang/String;
    .end local v18    # "tvCampaign":Landroid/widget/TextView;
    .end local v19    # "tvClose":Landroid/widget/TextView;
    .end local v20    # "tvContinue":Landroid/widget/TextView;
    :cond_197
    return-void
.end method

.method public static showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 91
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f040108

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 95
    const v4, 0x7f100151

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v4, 0x7f100155

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 100
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/bzbs/util/DialogUtil$3;

    invoke-direct {v4, v1}, Lcom/bzbs/util/DialogUtil$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 112
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_4a
    return-void
.end method

.method public static showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 29
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->isFinishing()Z

    move-result v21

    if-nez v21, :cond_10d

    .line 117
    const-string/jumbo v16, ""
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_14a

    .line 119
    .local v16, "response_text":Ljava/lang/String;
    :try_start_f
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_10e

    .line 120
    .end local v16    # "response_text":Ljava/lang/String;
    .local v17, "response_text":Ljava/lang/String;
    :try_start_18
    sget-object v21, Lcom/bzbs/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "showDialogHttpFailure:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_14c

    move-object/from16 v16, v17

    .line 125
    .end local v17    # "response_text":Ljava/lang/String;
    .restart local v16    # "response_text":Ljava/lang/String;
    :goto_37
    const/4 v8, 0x0

    .line 126
    .local v8, "id":I
    const/4 v4, 0x0

    .line 127
    .local v4, "code":I
    :try_start_39
    const-string/jumbo v12, ""

    .line 128
    .local v12, "message_bzbs":Ljava/lang/String;
    const-string/jumbo v13, ""
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_14a

    .line 130
    .local v13, "message_exception":Ljava/lang/String;
    :try_start_3f
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v10, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 132
    .local v9, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v21, "id"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 133
    const-string/jumbo v21, "code"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 134
    const-string/jumbo v21, "message"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_69} :catch_114

    move-result-object v12

    .line 145
    .end local v9    # "json_error":Lorg/json/JSONObject;
    .end local v10    # "json_result":Lorg/json/JSONObject;
    :goto_6a
    const/4 v14, 0x0

    .line 146
    .local v14, "need_logout":Z
    const/16 v21, 0x771

    move/from16 v0, v21

    if-eq v8, v0, :cond_77

    const/16 v21, 0x81c

    move/from16 v0, v21

    if-ne v8, v0, :cond_78

    .line 147
    :cond_77
    const/4 v14, 0x1

    .line 150
    :cond_78
    if-eqz v12, :cond_13c

    :try_start_7a
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13c

    .line 151
    new-instance v5, Landroid/app/Dialog;

    const v21, 0x1030010

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v5, "dialogSerial":Landroid/app/Dialog;
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_9e

    .line 153
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 156
    :cond_9e
    const v21, 0x7f040108

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 158
    const v21, 0x7f100151

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 159
    .local v20, "tvMessage":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_d9

    .line 162
    const v21, 0x7f100156

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 163
    .local v19, "tvClose":Landroid/widget/TextView;
    const v21, 0x7f0901e0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .end local v19    # "tvClose":Landroid/widget/TextView;
    :cond_d9
    move v15, v14

    .line 167
    .local v15, "need_logout_final":Z
    const v21, 0x7f100155

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 168
    .local v11, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v21, Lcom/bzbs/util/DialogUtil$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v15, v1}, Lcom/bzbs/util/DialogUtil$4;-><init>(Landroid/app/Dialog;ZLandroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 179
    .local v2, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v21, 0x11

    move/from16 v0, v21

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 180
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 182
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 191
    .end local v2    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "code":I
    .end local v5    # "dialogSerial":Landroid/app/Dialog;
    .end local v8    # "id":I
    .end local v11    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v12    # "message_bzbs":Ljava/lang/String;
    .end local v13    # "message_exception":Ljava/lang/String;
    .end local v14    # "need_logout":Z
    .end local v15    # "need_logout_final":Z
    .end local v16    # "response_text":Ljava/lang/String;
    .end local v20    # "tvMessage":Landroid/widget/TextView;
    :cond_10d
    :goto_10d
    return-void

    .line 121
    .restart local v16    # "response_text":Ljava/lang/String;
    :catch_10e
    move-exception v7

    .line 122
    .local v7, "ex":Ljava/lang/Exception;
    :goto_10f
    const-string/jumbo v16, ""

    goto/16 :goto_37

    .line 135
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v4    # "code":I
    .restart local v8    # "id":I
    .restart local v12    # "message_bzbs":Ljava/lang/String;
    .restart local v13    # "message_exception":Ljava/lang/String;
    :catch_114
    move-exception v6

    .line 136
    .local v6, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/bzbs/util/ConnectionDetector;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 138
    .local v3, "cd":Lcom/bzbs/util/ConnectionDetector;
    invoke-virtual {v3}, Lcom/bzbs/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v21

    if-nez v21, :cond_12f

    .line 139
    const v21, 0x7f09020b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6a

    .line 141
    :cond_12f
    const v21, 0x7f09009d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6a

    .line 184
    .end local v3    # "cd":Lcom/bzbs/util/ConnectionDetector;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "need_logout":Z
    :cond_13c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 185
    .local v18, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_149} :catch_14a

    goto :goto_10d

    .line 188
    .end local v4    # "code":I
    .end local v8    # "id":I
    .end local v12    # "message_bzbs":Ljava/lang/String;
    .end local v13    # "message_exception":Ljava/lang/String;
    .end local v14    # "need_logout":Z
    .end local v16    # "response_text":Ljava/lang/String;
    .end local v18    # "toast":Landroid/widget/Toast;
    :catch_14a
    move-exception v21

    goto :goto_10d

    .line 121
    .restart local v17    # "response_text":Ljava/lang/String;
    :catch_14c
    move-exception v7

    move-object/from16 v16, v17

    .end local v17    # "response_text":Ljava/lang/String;
    .restart local v16    # "response_text":Ljava/lang/String;
    goto :goto_10f
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 39
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f040108

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 43
    const v4, 0x7f100151

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v4, 0x7f100155

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 48
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/bzbs/util/DialogUtil$1;

    invoke-direct {v4, v1}, Lcom/bzbs/util/DialogUtil$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 60
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_4a
    return-void
.end method

.method public static showDialogMessageBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_56

    .line 64
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x1030010

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 66
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v5, 0x7f040109

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 68
    const v5, 0x7f1000b6

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, "tvHeader":Landroid/widget/TextView;
    const v5, 0x7f100151

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, 0x7f100155

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 75
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/bzbs/util/DialogUtil$2;

    invoke-direct {v5, v1}, Lcom/bzbs/util/DialogUtil$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 87
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "tvHeader":Landroid/widget/TextView;
    .end local v4    # "tvMessage":Landroid/widget/TextView;
    :cond_56
    return-void
.end method
