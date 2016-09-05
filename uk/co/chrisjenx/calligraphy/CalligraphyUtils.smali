.class public final Luk/co/chrisjenx/calligraphy/CalligraphyUtils;
.super Ljava/lang/Object;
.source "CalligraphyUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 313
    const/4 v0, 0x0

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;
    .registers 8

    .prologue
    .line 33
    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 34
    instance-of v0, p0, Landroid/text/Spannable;

    if-nez v0, :cond_24

    .line 35
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_11
    move-object v0, v1

    .line 37
    check-cast v0, Landroid/text/Spannable;

    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v1

    .line 39
    :cond_23
    return-object p0

    :cond_24
    move-object v1, p0

    goto :goto_11
.end method

.method static a(Landroid/content/Context;II)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 251
    if-eq p1, v1, :cond_8

    if-ne p2, v1, :cond_9

    .line 266
    :cond_8
    :goto_8
    return-object v0

    .line 254
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 255
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 257
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 258
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    new-array v3, v3, [I

    aput p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 260
    const/4 v2, 0x0

    :try_start_20
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_28
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d

    move-result-object v0

    .line 266
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    .line 262
    :catch_28
    move-exception v2

    .line 266
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static a(Landroid/content/Context;III)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 280
    if-eq p1, v4, :cond_8

    if-ne p3, v4, :cond_9

    .line 310
    :cond_8
    :goto_8
    return-object v0

    .line 283
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 284
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 286
    invoke-virtual {v1, p1, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 288
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    new-array v3, v6, [I

    aput p2, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 290
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_21
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_3d
    .catchall {:try_start_21 .. :try_end_24} :catchall_42

    move-result v2

    .line 295
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    if-eq v2, v4, :cond_8

    .line 299
    new-array v1, v6, [I

    aput p3, v1, v5

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_8

    .line 302
    const/4 v2, 0x0

    :try_start_35
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_47
    .catchall {:try_start_35 .. :try_end_38} :catchall_4c

    move-result-object v0

    .line 307
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    .line 291
    :catch_3d
    move-exception v2

    .line 295
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    :catchall_42
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 303
    :catch_47
    move-exception v2

    .line 307
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    :catchall_4c
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 156
    if-eq p2, v2, :cond_6

    if-nez p1, :cond_7

    .line 170
    :cond_6
    :goto_6
    return-object v0

    .line 161
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_e} :catch_1f

    move-result-object v1

    .line 167
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 168
    if-lez v2, :cond_1a

    .line 169
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 170
    :cond_1a
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 162
    :catch_1f
    move-exception v1

    goto :goto_6
.end method

.method static a(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 140
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 145
    :cond_6
    :goto_6
    return-void

    .line 141
    :cond_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0, p1, p3, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 144
    :cond_13
    invoke-static {p0, p1, p2, p4}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V

    goto :goto_6
.end method

.method static a(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/CalligraphyConfig;Z)V
    .registers 5

    .prologue
    .line 121
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 124
    :cond_6
    :goto_6
    return-void

    .line 122
    :cond_7
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {p2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z

    goto :goto_6
.end method

.method static a()Z
    .registers 1

    .prologue
    .line 321
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 323
    :try_start_4
    const-string/jumbo v0, "android.support.v7.widget.Toolbar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 324
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a:Ljava/lang/Boolean;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_15

    .line 329
    :cond_e
    :goto_e
    sget-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 325
    :catch_15
    move-exception v0

    .line 326
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a:Ljava/lang/Boolean;

    goto :goto_e
.end method

.method static a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 110
    if-eqz p1, :cond_4

    if-nez p0, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 113
    :goto_5
    return v0

    .line 111
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 112
    invoke-static {v0, p2}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 113
    invoke-static {p1, v0, p3}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z

    move-result v0

    goto :goto_5
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/Typeface;Z)Z
    .registers 5

    .prologue
    .line 73
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_5
    return v0

    .line 74
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    if-eqz p2, :cond_2b

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils;->a(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 78
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;

    invoke-direct {v0, p1}, Luk/co/chrisjenx/calligraphy/CalligraphyUtils$1;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    :cond_2b
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static b(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move-object v0, v1

    .line 199
    :goto_8
    return-object v0

    .line 185
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_26

    .line 189
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_28
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2d

    move-result v3

    if-nez v3, :cond_23

    .line 196
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    :cond_23
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_26
    :goto_26
    move-object v0, v1

    .line 199
    goto :goto_8

    .line 193
    :catch_28
    move-exception v0

    .line 196
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_26

    :catchall_2d
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static c(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 211
    if-eq p2, v0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    move-object v0, v1

    .line 239
    :goto_9
    return-object v0

    .line 216
    :cond_a
    new-array v2, v5, [I

    const v3, 0x1010034

    aput v3, v2, v4

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_20

    .line 219
    const/4 v0, 0x0

    const/4 v3, -0x1

    :try_start_19
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_33
    .catchall {:try_start_19 .. :try_end_1c} :catchall_39

    move-result v0

    .line 224
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    :cond_20
    new-array v2, v5, [I

    aput p2, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_49

    .line 231
    const/4 v0, 0x0

    :try_start_2b
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_3e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_44

    move-result-object v0

    .line 236
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    .line 220
    :catch_33
    move-exception v0

    .line 224
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v1

    goto :goto_9

    :catchall_39
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 232
    :catch_3e
    move-exception v0

    .line 236
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v1

    goto :goto_9

    :catchall_44
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_49
    move-object v0, v1

    .line 239
    goto :goto_9
.end method
