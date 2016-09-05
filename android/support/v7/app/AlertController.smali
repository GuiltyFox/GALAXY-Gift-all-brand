.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/AppCompatDialog;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/support/v4/widget/NestedScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 93
    iput v3, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController;->E:I

    .line 112
    iput v3, p0, Landroid/support/v7/app/AlertController;->L:I

    .line 116
    new-instance v0, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    .line 169
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    .line 170
    new-instance v0, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    .line 172
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->F:I

    .line 176
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->G:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->H:I

    .line 179
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->I:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->J:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->K:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 188
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;I)I
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Landroid/support/v7/app/AlertController;->E:I

    return p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5

    .prologue
    .line 418
    if-nez p1, :cond_f

    .line 420
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_2d

    .line 421
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 424
    :goto_c
    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    :goto_e
    return-object v0

    .line 428
    :cond_f
    if-eqz p2, :cond_1e

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 430
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    .line 431
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 436
    :cond_1e
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_2b

    .line 437
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 440
    :goto_28
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_e

    :cond_2b
    move-object v0, p1

    goto :goto_28

    :cond_2d
    move-object v0, p2

    goto :goto_c
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Landroid/support/v7/app/AlertController;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/high16 v4, 0x20000

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 596
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    if-eqz v1, :cond_4b

    .line 597
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 605
    :goto_a
    if-eqz v1, :cond_d

    const/4 v0, 0x1

    .line 606
    :cond_d
    if-eqz v0, :cond_15

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 607
    :cond_15
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 611
    :cond_1a
    if-eqz v0, :cond_5e

    .line 612
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 613
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController;->m:Z

    if-eqz v1, :cond_3d

    .line 616
    iget v1, p0, Landroid/support/v7/app/AlertController;->i:I

    iget v2, p0, Landroid/support/v7/app/AlertController;->j:I

    iget v3, p0, Landroid/support/v7/app/AlertController;->k:I

    iget v4, p0, Landroid/support/v7/app/AlertController;->l:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 620
    :cond_3d
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_4a

    .line 621
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 626
    :cond_4a
    :goto_4a
    return-void

    .line 598
    :cond_4b
    iget v1, p0, Landroid/support/v7/app/AlertController;->h:I

    if-eqz v1, :cond_5c

    .line 599
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 600
    iget v2, p0, Landroid/support/v7/app/AlertController;->h:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    .line 602
    :cond_5c
    const/4 v1, 0x0

    goto :goto_a

    .line 624
    :cond_5e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4a
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 517
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 519
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_25

    .line 521
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;II)V

    .line 523
    if-eqz v2, :cond_1f

    .line 524
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 526
    :cond_1f
    if-eqz v1, :cond_24

    .line 527
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 592
    :cond_24
    :goto_24
    return-void

    .line 531
    :cond_25
    if-eqz v2, :cond_2f

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2f

    .line 532
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v2, v0

    .line 535
    :cond_2f
    if-eqz v1, :cond_79

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_79

    .line 536
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 540
    :goto_38
    if-nez v2, :cond_3c

    if-eqz v0, :cond_24

    .line 544
    :cond_3c
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_55

    .line 546
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/AlertController$2;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 556
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/app/AlertController$3;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 562
    :cond_55
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_6e

    .line 564
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/AlertController$4;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 575
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/app/AlertController$5;

    invoke-direct {v3, p0, v2, v0}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 583
    :cond_6e
    if-eqz v2, :cond_73

    .line 584
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    :cond_73
    if-eqz v0, :cond_24

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_24

    :cond_79
    move-object v0, v1

    goto :goto_38
.end method

.method static a(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 209
    :goto_8
    return v0

    .line 195
    :cond_9
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_f

    move v0, v1

    .line 196
    goto :goto_8

    .line 199
    :cond_f
    check-cast p0, Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 201
    :cond_15
    if-lez v2, :cond_24

    .line 202
    add-int/lit8 v2, v2, -0x1

    .line 203
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 204
    invoke-static {v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_24
    move v0, v1

    .line 209
    goto :goto_8
.end method

.method private b()I
    .registers 3

    .prologue
    .line 219
    iget v0, p0, Landroid/support/v7/app/AlertController;->G:I

    if-nez v0, :cond_7

    .line 220
    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    .line 225
    :goto_6
    return v0

    .line 222
    :cond_7
    iget v0, p0, Landroid/support/v7/app/AlertController;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 223
    iget v0, p0, Landroid/support/v7/app/AlertController;->G:I

    goto :goto_6

    .line 225
    :cond_f
    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    goto :goto_6
.end method

.method static synthetic b(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    return-object v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 704
    if-eqz p1, :cond_f

    .line 705
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :cond_f
    if-eqz p2, :cond_1b

    .line 709
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :cond_1b
    return-void

    :cond_1c
    move v0, v2

    .line 705
    goto :goto_c

    :cond_1e
    move v1, v2

    .line 709
    goto :goto_18
.end method

.method private b(Landroid/view/ViewGroup;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 629
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 631
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 634
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 638
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :goto_1e
    return-void

    .line 640
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    .line 642
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x1

    .line 643
    :goto_35
    if-eqz v0, :cond_87

    .line 645
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    .line 646
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget v0, p0, Landroid/support/v7/app/AlertController;->x:I

    if-eqz v0, :cond_58

    .line 652
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e

    :cond_56
    move v0, v1

    .line 642
    goto :goto_35

    .line 653
    :cond_58
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_64

    .line 654
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 658
    :cond_64
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 662
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 666
    :cond_87
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 667
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1e
.end method

.method static synthetic c(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    sget v2, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 446
    sget v4, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 447
    sget v5, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 451
    sget v6, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 452
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;)V

    .line 454
    sget v6, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 455
    sget v7, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 456
    sget v8, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 459
    invoke-direct {p0, v6, v2}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 460
    invoke-direct {p0, v7, v4}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 461
    invoke-direct {p0, v8, v5}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 463
    invoke-direct {p0, v6}, Landroid/support/v7/app/AlertController;->c(Landroid/view/ViewGroup;)V

    .line 464
    invoke-direct {p0, v4}, Landroid/support/v7/app/AlertController;->d(Landroid/view/ViewGroup;)V

    .line 465
    invoke-direct {p0, v2}, Landroid/support/v7/app/AlertController;->b(Landroid/view/ViewGroup;)V

    .line 467
    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_b4

    move v0, v3

    .line 469
    :goto_59
    if-eqz v2, :cond_b6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_b6

    move v2, v3

    .line 471
    :goto_62
    if-eqz v4, :cond_b8

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_b8

    move v5, v3

    .line 475
    :goto_6b
    if-nez v5, :cond_7a

    .line 476
    if-eqz v6, :cond_7a

    .line 477
    sget v4, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 478
    if-eqz v4, :cond_7a

    .line 479
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_7a
    if-eqz v2, :cond_85

    .line 486
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v4, :cond_85

    .line 487
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 492
    :cond_85
    if-nez v0, :cond_9b

    .line 493
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    move-object v4, v0

    .line 494
    :goto_8e
    if-eqz v4, :cond_9b

    .line 495
    if-eqz v2, :cond_be

    move v2, v3

    :goto_93
    if-eqz v5, :cond_c0

    const/4 v0, 0x2

    :goto_96
    or-int/2addr v0, v2

    .line 497
    const/4 v1, 0x3

    invoke-direct {p0, v6, v4, v0, v1}, Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 502
    :cond_9b
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    .line 503
    if-eqz v0, :cond_b3

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b3

    .line 504
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iget v1, p0, Landroid/support/v7/app/AlertController;->E:I

    .line 506
    const/4 v2, -0x1

    if-le v1, v2, :cond_b3

    .line 507
    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 511
    :cond_b3
    return-void

    :cond_b4
    move v0, v1

    .line 467
    goto :goto_59

    :cond_b6
    move v2, v1

    .line 469
    goto :goto_62

    :cond_b8
    move v5, v1

    .line 471
    goto :goto_6b

    .line 493
    :cond_ba
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v0

    goto :goto_8e

    :cond_be
    move v2, v1

    .line 495
    goto :goto_93

    :cond_c0
    move v0, v1

    goto :goto_96
.end method

.method private c(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 675
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 676
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 677
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 680
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    .line 681
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-nez v0, :cond_2a

    .line 701
    :goto_29
    return-void

    .line 685
    :cond_2a
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_36

    .line 686
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 688
    :cond_36
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 691
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_62

    .line 692
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 693
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 694
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 695
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 698
    :cond_62
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_29
.end method

.method static synthetic d(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    return-object v0
.end method

.method private d(Landroid/view/ViewGroup;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 715
    .line 716
    const/4 v4, 0x2

    .line 717
    const/4 v5, 0x4

    .line 719
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    .line 720
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 723
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 730
    :goto_26
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    .line 731
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 734
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    :goto_45
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    .line 743
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 746
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 754
    :goto_64
    if-eqz v1, :cond_96

    .line 755
    :goto_66
    if-nez v3, :cond_6b

    .line 756
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 758
    :cond_6b
    return-void

    .line 725
    :cond_6c
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 727
    goto :goto_26

    .line 736
    :cond_7a
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    or-int/2addr v1, v4

    goto :goto_45

    .line 748
    :cond_88
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    or-int/2addr v1, v5

    goto :goto_64

    :cond_96
    move v3, v2

    .line 754
    goto :goto_66
.end method

.method static synthetic e(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/AlertController;)Landroid/support/v4/widget/NestedScrollView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/app/AlertController;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/app/AlertController;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->H:I

    return v0
.end method

.method static synthetic l(Landroid/support/v7/app/AlertController;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->I:I

    return v0
.end method

.method static synthetic m(Landroid/support/v7/app/AlertController;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->J:I

    return v0
.end method

.method static synthetic n(Landroid/support/v7/app/AlertController;)I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/support/v7/app/AlertController;->K:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->b()I

    move-result v0

    .line 214
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 215
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->c()V

    .line 216
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 254
    iput p1, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 256
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 303
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 304
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 307
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :pswitch_16
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    .line 311
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    .line 327
    :goto_1a
    return-void

    .line 315
    :pswitch_1b
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    .line 316
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    goto :goto_1a

    .line 320
    :pswitch_20
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    .line 321
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    goto :goto_1a

    .line 307
    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    .line 356
    iput v1, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 358
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 359
    if-eqz p1, :cond_16

    .line 360
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_15
    :goto_15
    return-void

    .line 363
    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 7

    .prologue
    .line 272
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 275
    iput p2, p0, Landroid/support/v7/app/AlertController;->i:I

    .line 276
    iput p3, p0, Landroid/support/v7/app/AlertController;->j:I

    .line 277
    iput p4, p0, Landroid/support/v7/app/AlertController;->k:I

    .line 278
    iput p5, p0, Landroid/support/v7/app/AlertController;->l:I

    .line 279
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_b
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(I)V
    .registers 4

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    .line 337
    iput p1, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    .line 340
    if-eqz p1, :cond_19

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :cond_18
    :goto_18
    return-void

    .line 344
    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18
.end method

.method public b(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    .line 240
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 243
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_b
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(I)I
    .registers 5

    .prologue
    .line 375
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 376
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 377
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 263
    iput v0, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 264
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 265
    return-void
.end method
