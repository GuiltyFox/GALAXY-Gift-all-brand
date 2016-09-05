.class Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;
.super Ljava/lang/Object;
.source "AddMoneyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string/jumbo v1, "issuer"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v1, "cardId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/AddMoneyActivity;->c(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "icon"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v1, "list_config"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/AddMoneyActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v1, v1, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1$1;->e:Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;

    iget-object v3, v3, Lcom/samsung/privilege/activity/AddMoneyActivity$3$1;->b:Lcom/samsung/privilege/activity/AddMoneyActivity$3;

    iget-object v3, v3, Lcom/samsung/privilege/activity/AddMoneyActivity$3;->a:Lcom/samsung/privilege/activity/AddMoneyActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/AddMoneyActivity;->b(Lcom/samsung/privilege/activity/AddMoneyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    return-void
.end method
