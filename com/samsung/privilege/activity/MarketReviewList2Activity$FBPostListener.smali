.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Lcom/facebook/android/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)V
    .registers 3

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)Lcom/samsung/privilege/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 3

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1171
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lcom/samsung/privilege/PostData;

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$4;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
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
    .line 1175
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$2;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1211
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
    .line 1215
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$9(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener$3;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$FBPostListener;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1233
    return-void
.end method

.method public onPremiumChanged()V
    .registers 1

    .prologue
    .line 1261
    return-void
.end method
