.class Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;)V
    .registers 2

    .prologue
    .line 710
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 714
    :try_start_0
    const-string/jumbo v0, "CODE_128"

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 715
    new-instance v1, Lcom/bzbs/zxing/QRCodeEncoder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_bb

    .line 717
    :try_start_33
    invoke-virtual {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_44
    .catch Lcom/google/zxing/WriterException; {:try_start_33 .. :try_end_44} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_44} :catch_bb

    .line 723
    :goto_44
    :try_start_44
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->W:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->X:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_61} :catch_bb

    .line 729
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Change To Barcode"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1$1;->b:Lcom/samsung/privilege/activity/WalletCardActivity$6$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$6;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    return-void

    .line 719
    :catch_9a
    move-exception v0

    .line 720
    :try_start_9b
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

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
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ba} :catch_bb

    goto :goto_44

    .line 725
    :catch_bb
    move-exception v0

    .line 726
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

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

    goto :goto_61
.end method
