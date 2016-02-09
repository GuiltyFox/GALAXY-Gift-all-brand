.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->initialLayoutComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    .line 2335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 2355
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 2350
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 2339
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$35(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 2343
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$35(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2345
    return-void

    .line 2340
    :cond_1c
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$15;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gridStickerSet:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$35(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
