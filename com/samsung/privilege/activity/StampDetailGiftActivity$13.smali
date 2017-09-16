.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(IILjava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;I)V
    .registers 3

    .prologue
    .line 738
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 756
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 742
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .prologue
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v3, 0x7f09017b

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$13;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v3, 0x7f090177

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 751
    :goto_52
    return-void

    .line 748
    :catch_53
    move-exception v0

    goto :goto_52
.end method
