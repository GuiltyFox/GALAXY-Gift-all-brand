.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1292
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$DeleteReviewListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$11(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1293
    return-void
.end method
