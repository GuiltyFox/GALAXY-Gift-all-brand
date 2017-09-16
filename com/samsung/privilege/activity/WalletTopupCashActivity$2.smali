.class Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;
.super Ljava/lang/Object;
.source "WalletTopupCashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletTopupCashActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/LinearLayout;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Lcom/samsung/privilege/activity/WalletTopupCashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 6

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->e:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->c:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 187
    :try_start_0
    const-string/jumbo v0, "CODE_128"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/bzbs/zxing/QRCodeEncoder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->e:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_55

    .line 190
    :try_start_1d
    invoke-virtual {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_26
    .catch Lcom/google/zxing/WriterException; {:try_start_1d .. :try_end_26} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_55

    .line 196
    :goto_26
    :try_start_26
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    :goto_33
    return-void

    .line 192
    :catch_34
    move-exception v0

    .line 193
    invoke-static {}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_55

    goto :goto_26

    .line 198
    :catch_55
    move-exception v0

    .line 199
    invoke-static {}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
