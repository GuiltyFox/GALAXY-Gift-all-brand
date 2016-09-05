.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->a:Landroid/view/LayoutInflater;

    .line 529
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->b:I

    .line 530
    iput p3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->c:I

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .registers 5

    .prologue
    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 535
    .line 538
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->b:I

    if-eq v1, v4, :cond_34

    .line 539
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->a:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->b:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 542
    :goto_f
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->c:I

    if-eq v2, v4, :cond_1d

    if-eqz v1, :cond_1d

    .line 543
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    :cond_1d
    if-nez v0, :cond_2a

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object v0, v1

    .line 547
    check-cast v0, Landroid/widget/TextView;

    .line 550
    :cond_2a
    if-eqz v0, :cond_33

    .line 551
    invoke-virtual {p3, p2}, Landroid/support/v4/view/PagerAdapter;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_33
    return-object v1

    :cond_34
    move-object v1, v0

    goto :goto_f
.end method
