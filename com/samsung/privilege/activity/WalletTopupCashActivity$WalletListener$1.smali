.class Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;
.super Ljava/lang/Object;
.source "WalletTopupCashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 7

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->f:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->d:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->e:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd MMM yyyy"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->f:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 107
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->f:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    iget-object v3, v3, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;->a:Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    const v4, 0x7f0901d0

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener$1;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    return-void
.end method
