.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$2;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$4(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 833
    return-void
.end method
