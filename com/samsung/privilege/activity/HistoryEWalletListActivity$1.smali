.class Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;
.super Ljava/lang/Object;
.source "HistoryEWalletListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;->this$0:Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 104
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method