.class Lcom/samsung/privilege/activity/WalletCardActivity$6$1$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$6$1;)V
    .registers 2

    .prologue
    .line 890
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 894
    return-void
.end method
