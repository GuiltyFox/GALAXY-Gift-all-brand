.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->openSticker(Landroid/view/View;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    .line 2364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2368
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentSticker:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$27(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2369
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$16;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentImage:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$26(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2370
    return-void
.end method
