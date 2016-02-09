.class Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Lcom/facebook/android/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 2

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;)V
    .registers 3

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1279
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lcom/samsung/privilege/PostData;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$4;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1363
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
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$2;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1320
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
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1324
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$7(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1340
    return-void
.end method

.method public onPremiumChanged()V
    .registers 1

    .prologue
    .line 1368
    return-void
.end method
