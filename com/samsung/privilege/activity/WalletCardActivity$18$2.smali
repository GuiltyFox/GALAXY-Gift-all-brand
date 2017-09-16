.class Lcom/samsung/privilege/activity/WalletCardActivity$18$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$18;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$18;)V
    .registers 2

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$18$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$18;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1717
    return-void
.end method
