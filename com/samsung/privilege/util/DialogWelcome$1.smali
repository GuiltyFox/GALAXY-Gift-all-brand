.class final Lcom/samsung/privilege/util/DialogWelcome$1;
.super Ljava/lang/Object;
.source "DialogWelcome.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;[Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->c:[Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 120
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 115
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .prologue
    .line 87
    invoke-static {}, Lcom/samsung/privilege/util/DialogWelcome;->a()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_13

    .line 88
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/util/DialogWelcome$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogWelcome$1$1;-><init>(Lcom/samsung/privilege/util/DialogWelcome$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {}, Lcom/samsung/privilege/util/DialogWelcome;->a()[Ljava/lang/Integer;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 104
    if-ne v0, p1, :cond_2a

    .line 105
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 107
    :cond_2a
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogWelcome$1;->c:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02019b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 110
    :cond_35
    return-void
.end method
