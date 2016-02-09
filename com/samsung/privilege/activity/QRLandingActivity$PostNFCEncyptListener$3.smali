.class Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$5(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$5(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->openContextMenu(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener$3;->this$1:Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->this$0:Lcom/samsung/privilege/activity/QRLandingActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;->access$1(Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)Lcom/samsung/privilege/activity/QRLandingActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->access$5(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 354
    return-void
.end method
