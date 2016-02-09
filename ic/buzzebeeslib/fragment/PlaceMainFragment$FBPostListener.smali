.class Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Lic/buzzebeeslib/util/async/PostEvents$PostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FBPostListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)V
    .registers 3

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)Lic/buzzebeeslib/fragment/PlaceMainFragment;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    return-object v0
.end method


# virtual methods
.method public onPostBegin()V
    .registers 3

    .prologue
    .line 431
    const-string v0, "buzzebees.places"

    const-string v1, "public void onPostBegin() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onPostFail(Ljava/lang/String;Lic/buzzebeeslib/util/async/PostData;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "postData"    # Lic/buzzebeeslib/util/async/PostData;

    .prologue
    .line 486
    const-string v0, "buzzebees.places"

    const-string v1, "public void onPostFail(final String error, final PostData postData) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$3;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
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
    .line 436
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    const-string v0, "buzzebees.places"

    const-string v1, "public void onPostReviewSucceed(final JSONObject jsonRoot, final int points, final ArrayList<BadgeAlert> badgeAlerts) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;

    invoke-direct {v1, p0, p2, p3}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$1;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
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
    .line 461
    .local p3, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    const-string v0, "buzzebees.places"

    const-string v1, "public void onPostSucceed(final String id, final int points, final ArrayList<BadgeAlert> badgeAlerts) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$2;

    invoke-direct {v1, p0, p2, p3}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener$2;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method
