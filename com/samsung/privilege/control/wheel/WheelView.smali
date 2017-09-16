.class public Lcom/samsung/privilege/control/wheel/WheelView;
.super Landroid/widget/ScrollView;
.source "WheelView.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/Runnable;

.field h:I

.field i:I

.field j:[I

.field k:Landroid/graphics/Paint;

.field l:I

.field private m:Landroid/content/Context;

.field private n:Landroid/widget/LinearLayout;

.field private o:I

.field private p:Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/privilege/control/wheel/WheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/control/wheel/WheelView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 86
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    .line 98
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->h:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->o:I

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    .line 98
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->h:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->o:I

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    .line 98
    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 166
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->h:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->o:I

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private a(F)I
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 424
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 429
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 430
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 8

    .prologue
    const/4 v5, -0x1

    .line 187
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->m:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 190
    const/4 v0, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->a(F)I

    move-result v0

    .line 195
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    if-nez v0, :cond_75

    .line 197
    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    .line 198
    sget-object v0, Lcom/samsung/privilege/control/wheel/WheelView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "itemHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    iget v4, p0, Lcom/samsung/privilege/control/wheel/WheelView;->d:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    iget v4, p0, Lcom/samsung/privilege/control/wheel/WheelView;->d:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_75
    return-object v1
.end method

.method private a(I)V
    .registers 7

    .prologue
    .line 243
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v0, v1

    .line 244
    iget v1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    rem-int v1, p1, v1

    .line 245
    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    div-int v2, p1, v2

    .line 247
    if-nez v1, :cond_2a

    .line 248
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v0, v2

    move v1, v0

    .line 280
    :goto_15
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 281
    const/4 v0, 0x0

    move v2, v0

    :goto_1d
    if-ge v2, v3, :cond_29

    .line 282
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    if-nez v0, :cond_37

    .line 292
    :cond_29
    return-void

    .line 250
    :cond_2a
    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_52

    .line 251
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_15

    .line 286
    :cond_37
    if-ne v1, v2, :cond_47

    .line 287
    const-string/jumbo v4, "#0288ce"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    :goto_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 289
    :cond_47
    const-string/jumbo v4, "#bbbbbb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_43

    :cond_52
    move v1, v0

    goto :goto_15
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->m:Landroid/content/Context;

    .line 106
    sget-object v0, Lcom/samsung/privilege/control/wheel/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->addView(Landroid/view/View;)V

    .line 114
    new-instance v0, Lcom/samsung/privilege/control/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/wheel/WheelView$1;-><init>(Lcom/samsung/privilege/control/wheel/WheelView;)V

    iput-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->g:Ljava/lang/Runnable;

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/control/wheel/WheelView;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->d()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 175
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->d:I

    .line 177
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->n:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_e

    .line 181
    :cond_24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->a(I)V

    .line 182
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/control/wheel/WheelView;)[I
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->c()[I

    move-result-object v0

    return-object v0
.end method

.method private c()[I
    .registers 5

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->j:[I

    if-nez v0, :cond_1f

    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->j:[I

    .line 302
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->j:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 303
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->j:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->i:I

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    .line 305
    :cond_1f
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->j:[I

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->p:Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;

    if-eqz v0, :cond_15

    .line 372
    iget-object v1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->p:Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;

    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    iget v3, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;->a(ILjava/lang/String;)V

    .line 375
    :cond_15
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->f:I

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->g:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->h:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/privilege/control/wheel/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public a(Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->p:Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;

    .line 420
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    if-nez v0, :cond_c

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    .line 71
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 75
    :goto_17
    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    if-ge v0, v2, :cond_2e

    .line 76
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->b:Ljava/util/List;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 80
    :cond_2e
    invoke-direct {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->b()V

    .line 82
    return-void
.end method

.method public fling(I)V
    .registers 3

    .prologue
    .line 400
    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 401
    return-void
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    return v0
.end method

.method public getSeletedIndex()I
    .registers 3

    .prologue
    .line 394
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    iget v1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 228
    invoke-direct {p0, p2}, Lcom/samsung/privilege/control/wheel/WheelView;->a(I)V

    .line 230
    if-le p2, p4, :cond_c

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->o:I

    .line 240
    :goto_b
    return-void

    .line 235
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->o:I

    goto :goto_b
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .prologue
    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 362
    sget-object v0, Lcom/samsung/privilege/control/wheel/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput p1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 407
    invoke-virtual {p0}, Lcom/samsung/privilege/control/wheel/WheelView;->a()V

    .line 409
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    .line 319
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    if-nez v0, :cond_31

    .line 320
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    .line 321
    sget-object v0, Lcom/samsung/privilege/control/wheel/WheelView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/privilege/control/wheel/WheelView;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_31
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_54

    .line 325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    .line 327
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/samsung/privilege/control/wheel/WheelView;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    :cond_54
    new-instance v0, Lcom/samsung/privilege/control/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/control/wheel/WheelView$2;-><init>(Lcom/samsung/privilege/control/wheel/WheelView;)V

    .line 355
    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    .line 94
    return-void
.end method

.method public setSeletion(I)V
    .registers 3

    .prologue
    .line 378
    .line 379
    iget v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/privilege/control/wheel/WheelView;->e:I

    .line 380
    new-instance v0, Lcom/samsung/privilege/control/wheel/WheelView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/privilege/control/wheel/WheelView$3;-><init>(Lcom/samsung/privilege/control/wheel/WheelView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/wheel/WheelView;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method
