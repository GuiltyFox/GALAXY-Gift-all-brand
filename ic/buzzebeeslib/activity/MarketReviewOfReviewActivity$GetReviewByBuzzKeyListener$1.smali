.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1323
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->initialLayout()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$13(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    .line 1324
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewByBuzzKeyListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->loadReviewOfReview(Z)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$14(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Z)V

    .line 1325
    return-void
.end method
