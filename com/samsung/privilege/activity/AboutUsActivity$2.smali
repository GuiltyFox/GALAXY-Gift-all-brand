.class Lcom/samsung/privilege/activity/AboutUsActivity$2;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AboutUsActivity;->f()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/privilege/activity/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->d:Lcom/samsung/privilege/activity/AboutUsActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$2;->d:Lcom/samsung/privilege/activity/AboutUsActivity;

    const-string/jumbo v2, "Send Email"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
