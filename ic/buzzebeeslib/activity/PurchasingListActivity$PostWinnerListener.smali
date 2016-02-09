.class public Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostWinnerListener"
.end annotation


# instance fields
.field private gPurchasing:Lic/buzzebeeslib/bean/Purchasing;

.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/bean/Purchasing;)V
    .registers 3
    .param p2, "purchasing"    # Lic/buzzebeeslib/bean/Purchasing;

    .prologue
    .line 1596
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 1597
    iput-object p2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;

    .line 1598
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/bean/Purchasing;
    .registers 2

    .prologue
    .line 1594
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->gPurchasing:Lic/buzzebeeslib/bean/Purchasing;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 1592
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1602
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$0(Lic/buzzebeeslib/activity/PurchasingListActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostWinnerListener|onComplete)response={"

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

    .line 1604
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1605
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 1606
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    # getter for: Lic/buzzebeeslib/activity/PurchasingListActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$22(Lic/buzzebeeslib/activity/PurchasingListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1609
    :cond_3b
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v1, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$PostWinnerListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/PurchasingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1660
    :cond_45
    return-void
.end method
