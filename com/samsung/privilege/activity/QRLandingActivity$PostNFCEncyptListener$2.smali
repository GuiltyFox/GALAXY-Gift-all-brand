.class Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;
.super Ljava/lang/Object;
.source "QRLandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$2;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;
    invoke-static {v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$4(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 346
    return-void
.end method
