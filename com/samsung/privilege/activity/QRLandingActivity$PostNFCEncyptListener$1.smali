.class Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;
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

.field private final synthetic val$message_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;->val$message_final:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$1;->val$message_final:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    return-void
.end method
