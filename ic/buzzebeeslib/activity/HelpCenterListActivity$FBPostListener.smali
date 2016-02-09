.class Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Lic/buzzebeeslib/util/async/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1596
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)V
    .registers 3

    .prologue
    .line 1596
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)Lic/buzzebeeslib/activity/HelpCenterListActivity;
    .registers 2

    .prologue
    .line 1596
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 3

    .prologue
    .line 1600
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$1;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1606
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lic/buzzebeeslib/util/async/PostData;

    .prologue
    .line 1677
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$4;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$4;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1696
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
    .line 1610
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$2;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1650
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
    .line 1654
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # getter for: Lic/buzzebeeslib/activity/HelpCenterListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$6(Lic/buzzebeeslib/activity/HelpCenterListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$3;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener$3;-><init>(Lic/buzzebeeslib/activity/HelpCenterListActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1673
    return-void
.end method
