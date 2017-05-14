.class public Lcom/bzbs/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field public static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/bzbs/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/DialogUtil;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/bzbs/util/DialogUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 180
    new-instance v9, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v9, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 182
    const v0, 0x7f04010c

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 184
    const v0, 0x7f10017e

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 185
    const v0, 0x7f1002b2

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 186
    const v0, 0x7f1002cb

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 187
    const v0, 0x7f1002e2

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 188
    const v3, 0x7f1002d3

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/ImageView;

    .line 189
    const v3, 0x7f1005a2

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    .line 190
    const v3, 0x7f100170

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    const v4, 0x7f1005a3

    invoke-virtual {v9, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 194
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 195
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 196
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 202
    iget-object v3, p2, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font size=\'+2\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<font size=\'+1\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<html>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "<body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 234
    new-instance v0, Lcom/bzbs/util/DialogUtil$4;

    invoke-direct {v0, v9, p2, p0}, Lcom/bzbs/util/DialogUtil$4;-><init>(Landroid/app/Dialog;Lcom/bzbs/bean/Campaign;Landroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    new-instance v0, Lcom/bzbs/util/DialogUtil$5;

    invoke-direct {v0, v9}, Lcom/bzbs/util/DialogUtil$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 261
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 262
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 266
    :cond_17b
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 89
    :try_start_2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b1

    .line 92
    const-string/jumbo v5, ""

    .line 93
    const-string/jumbo v3, ""
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_ee

    .line 95
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v6, "error"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 97
    const-string/jumbo v1, "id"

    invoke-static {v6, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_b2

    move-result v1

    .line 98
    :try_start_25
    const-string/jumbo v7, "code"

    invoke-static {v6, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v7, "message"

    invoke-static {v6, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_f0

    move-result-object v5

    move v6, v1

    move-object v1, v5

    move-object v5, v3

    .line 111
    :goto_35
    const/16 v3, 0x771

    if-eq v6, v3, :cond_3d

    const/16 v3, 0x81c

    if-ne v6, v3, :cond_f5

    :cond_3d
    move v3, v4

    .line 115
    :goto_3e
    const/16 v2, 0x82d

    if-ne v6, v2, :cond_d7

    .line 116
    const v1, 0x7f0903c6

    :try_start_45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 121
    :goto_4a
    if-eqz v2, :cond_e5

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 122
    new-instance v5, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v5, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 123
    if-ne v3, v4, :cond_63

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 127
    :cond_63
    const v1, 0x7f04011a

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 129
    const v1, 0x7f10016b

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    if-ne v3, v4, :cond_8a

    .line 133
    const v1, 0x7f100170

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    const v2, 0x7f0901e8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_8a
    const v1, 0x7f10016f

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 139
    new-instance v2, Lcom/bzbs/util/DialogUtil$3;

    invoke-direct {v2, v5, v3, p0}, Lcom/bzbs/util/DialogUtil$3;-><init>(Landroid/app/Dialog;ZLandroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 150
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 162
    :cond_b1
    :goto_b1
    return-void

    .line 100
    :catch_b2
    move-exception v1

    move v1, v2

    .line 101
    :goto_b4
    new-instance v3, Lcom/bzbs/util/ConnectionDetector;

    invoke-direct {v3, p0}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v3}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 104
    const v3, 0x7f090213

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v6, v1

    move-object v1, v5

    move-object v5, v3

    goto/16 :goto_35

    .line 106
    :cond_cb
    const v3, 0x7f09008d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v6, v1

    move-object v1, v5

    move-object v5, v3

    goto/16 :goto_35

    .line 117
    :cond_d7
    const/16 v2, 0xfb9

    if-ne v6, v2, :cond_f2

    .line 118
    const v1, 0x7f0903c7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4a

    .line 155
    :cond_e5
    const/4 v1, 0x0

    invoke-static {p0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_ed} :catch_ee

    goto :goto_b1

    .line 159
    :catch_ee
    move-exception v1

    goto :goto_b1

    .line 100
    :catch_f0
    move-exception v3

    goto :goto_b4

    :cond_f2
    move-object v2, v1

    goto/16 :goto_4a

    :cond_f5
    move v3, v2

    goto/16 :goto_3e
.end method

.method public static a(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 165
    const-string/jumbo v0, ""

    .line 167
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 168
    sget-object v1, Lcom/bzbs/util/DialogUtil;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialogHttpFailure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_25

    .line 173
    :goto_21
    invoke-static {p0, p1, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 174
    return-void

    .line 169
    :catch_25
    move-exception v0

    .line 170
    const-string/jumbo v0, ""

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 39
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    const v0, 0x7f04011a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 43
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    new-instance v2, Lcom/bzbs/util/DialogUtil$1;

    invoke-direct {v2, v1}, Lcom/bzbs/util/DialogUtil$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 60
    :cond_4a
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 269
    new-instance v6, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 271
    const v0, 0x7f040118

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 273
    const v0, 0x7f1000b7

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    const v1, 0x7f10016b

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    const v2, 0x7f1005c4

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 276
    const v3, 0x7f10058b

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 277
    const v4, 0x7f1005c5

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 278
    const v5, 0x7f1005c6

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 281
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 282
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 283
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v0, 0x1

    if-ne p2, v0, :cond_88

    .line 294
    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_88
    new-instance v0, Lcom/bzbs/util/DialogUtil$6;

    invoke-direct {v0, v6, v2, p0, p2}, Lcom/bzbs/util/DialogUtil$6;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v0, Lcom/bzbs/util/DialogUtil$7;

    invoke-direct {v0, v6}, Lcom/bzbs/util/DialogUtil$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 317
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 320
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 321
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 63
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 64
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 66
    const v0, 0x7f04011a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 68
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 73
    new-instance v2, Lcom/bzbs/util/DialogUtil$2;

    invoke-direct {v2, v1}, Lcom/bzbs/util/DialogUtil$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 80
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 85
    :cond_4a
    return-void
.end method
