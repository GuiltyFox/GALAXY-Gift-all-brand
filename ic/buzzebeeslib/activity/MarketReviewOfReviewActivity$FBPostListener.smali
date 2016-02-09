.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Lic/buzzebeeslib/util/async/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1812
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)V
    .registers 3

    .prologue
    .line 1812
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    .registers 2

    .prologue
    .line 1812
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 3

    .prologue
    .line 1816
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$9(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1822
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lic/buzzebeeslib/util/async/PostData;

    .prologue
    .line 1872
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$9(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$4;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1878
    return-void
.end method

.method public onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 6
    .param p1, "jsonRoot"    # Lorg/json/JSONObject;
    .param p2, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$9(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1858
    return-void
.end method

.method public onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$9(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener$3;-><init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1868
    return-void
.end method
