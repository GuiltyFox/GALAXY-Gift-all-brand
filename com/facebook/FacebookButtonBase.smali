.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    if-nez p4, :cond_16

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result v0

    .line 65
    :goto_a
    if-nez v0, :cond_e

    sget v0, Lcom/facebook/R$style;->com_facebook_button:I

    .line 66
    :cond_e
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    .line 69
    return-void

    :cond_16
    move v0, p4

    .line 64
    goto :goto_a
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 242
    :goto_7
    return-void

    .line 219
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 228
    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 229
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 230
    if-eqz v0, :cond_2e

    .line 231
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_38

    .line 240
    :goto_2a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    .line 233
    :cond_2e
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_30
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 240
    :catchall_38
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 237
    :cond_3d
    const/4 v0, 0x0

    :try_start_3e
    sget v2, Lcom/facebook/R$color;->com_facebook_blue:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_38

    goto :goto_2a
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    .line 249
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 262
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 263
    :try_start_10
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 265
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 266
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 262
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 267
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_36

    .line 270
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    return-void

    .line 270
    :catchall_36
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 249
    nop

    :array_3c
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .prologue
    .line 279
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 291
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 292
    :try_start_10
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 295
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 291
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    .line 297
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    return-void

    .line 297
    :catchall_2d
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 279
    :array_32
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 306
    new-array v0, v4, [I

    const v1, 0x1010098

    aput v1, v0, v3

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 315
    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_13
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setTextColor(I)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_6b

    .line 317
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    new-array v0, v4, [I

    const v1, 0x10100af

    aput v1, v0, v3

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 328
    const/4 v0, 0x0

    const/16 v2, 0x11

    :try_start_2f
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_70

    .line 330
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_7a

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 343
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4a
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 344
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_75

    .line 347
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    return-void

    .line 317
    :catchall_6b
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 330
    :catchall_70
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 347
    :catchall_75
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 332
    :array_7a
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method

.method private setupOnClickListener()V
    .registers 2

    .prologue
    .line 354
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 193
    :cond_9
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 186
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V

    .line 187
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .registers 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 160
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 163
    :cond_13
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    .line 164
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 166
    :cond_1a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 147
    :goto_6
    return v0

    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_6
.end method

.method public getCompoundPaddingRight()I
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 154
    :goto_6
    return v0

    :cond_7
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_6
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 111
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V

    .line 113
    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4b

    move v0, v1

    .line 118
    :goto_b
    if-eqz v0, :cond_45

    .line 126
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 128
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v4

    .line 129
    add-int/2addr v4, v0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v5

    sub-int v4, v5, v4

    sub-int/2addr v4, v3

    .line 131
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v5

    .line 132
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 133
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 135
    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 136
    add-int v0, v3, v4

    iput v0, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 137
    iput-boolean v1, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 139
    :cond_45
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iput-boolean v2, p0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 141
    return-void

    :cond_4b
    move v0, v2

    .line 117
    goto :goto_b
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 83
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;

    .line 197
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
