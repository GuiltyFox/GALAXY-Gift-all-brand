.class public Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostDrawsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 2620
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    .registers 2

    .prologue
    .line 2620
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2624
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostDrawListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    const-string v1, "onComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " !isFinishing() "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2629
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2630
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$10(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2633
    :cond_58
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2693
    :cond_62
    return-void

    .line 2626
    :cond_63
    const/4 v0, 0x1

    goto :goto_34
.end method
