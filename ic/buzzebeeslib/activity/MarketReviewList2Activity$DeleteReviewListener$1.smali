.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 823
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->doRefresh(Landroid/view/View;)V

    .line 824
    return-void
.end method
