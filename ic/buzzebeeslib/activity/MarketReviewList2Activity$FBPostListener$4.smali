.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$4;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

.field private final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$4;->val$error:Ljava/lang/String;

    .line 1948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1951
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$4;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST ERROR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$FBPostListener$4;->val$error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    .line 1952
    return-void
.end method
