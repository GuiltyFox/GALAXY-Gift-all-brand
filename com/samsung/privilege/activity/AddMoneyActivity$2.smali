.class Lcom/samsung/privilege/activity/AddMoneyActivity$2;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/integration/android/IntentResult;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity;Lcom/google/zxing/integration/android/IntentResult;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$2;->b:Lcom/samsung/privilege/activity/AddMoneyActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$2;->a:Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$2;->b:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const v1, 0x7f1000c7

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$2;->a:Lcom/google/zxing/integration/android/IntentResult;

    invoke-virtual {v1}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$2;->b:Lcom/samsung/privilege/activity/AddMoneyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->doConfirm(Landroid/view/View;)V

    .line 110
    return-void
.end method
