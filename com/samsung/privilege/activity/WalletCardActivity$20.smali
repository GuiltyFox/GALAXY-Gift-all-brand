.class Lcom/samsung/privilege/activity/WalletCardActivity$20;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 1597
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1600
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doVerifyImei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1604
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1605
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 1607
    const-string/jumbo v3, "imei"

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1608
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string/jumbo v0, "issuer"

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1611
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v0, "first_name"

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1614
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "first_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const-string/jumbo v0, "last_name"

    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1617
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string/jumbo v0, "is_create"

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1620
    invoke-static {}, Lcom/samsung/privilege/activity/WalletCardActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "is_create=true"

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const/16 v0, 0x14

    .line 1623
    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v3

    iget v3, v3, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    if-lez v3, :cond_122

    .line 1624
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v0

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 1627
    :cond_122
    iget-object v3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v7, 0x7f090283

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1628
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1629
    new-instance v3, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    .line 1630
    invoke-virtual {v3, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1631
    invoke-virtual {v3, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v3

    .line 1632
    invoke-virtual {v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1633
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$20;->f:Lcom/samsung/privilege/activity/WalletCardActivity;

    .line 1634
    invoke-virtual {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1635
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1636
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1637
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1638
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/samsung/privilege/activity/WalletCardActivity$20$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$20;J)V

    .line 1639
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1703
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1704
    return-void
.end method
