.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

.field private final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;->val$error:Ljava/lang/String;

    .line 1872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1875
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST ERROR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;->val$error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    .line 1876
    return-void
.end method
