.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(IILjava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;III)V
    .registers 5

    .prologue
    .line 767
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->d:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->a:I

    iput p3, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->b:I

    iput p4, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 772
    iget v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->a:I

    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->b:I

    if-gt v0, v1, :cond_27

    .line 773
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->c:I

    if-ge v0, v1, :cond_23

    .line 775
    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->a:I

    mul-int/lit8 v2, v0, 0xa

    if-le v1, v2, :cond_24

    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->a:I

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0xa

    if-gt v1, v2, :cond_24

    .line 777
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->d:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 785
    :cond_23
    :goto_23
    return-void

    .line 773
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 781
    :cond_27
    iget v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->a:I

    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->b:I

    if-lt v0, v1, :cond_23

    .line 783
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->d:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$14;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_23
.end method
