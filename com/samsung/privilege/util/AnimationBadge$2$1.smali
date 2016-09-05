.class Lcom/samsung/privilege/util/AnimationBadge$2$1;
.super Ljava/lang/Object;
.source "AnimationBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadge$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/privilege/util/AnimationBadge$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/AnimationBadge$2;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadge$2$1;->b:Lcom/samsung/privilege/util/AnimationBadge$2;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadge$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "ic.buzzebees.service.receiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "content"

    const-string/jumbo v2, "GOTO_MARKET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$2$1;->b:Lcom/samsung/privilege/util/AnimationBadge$2;

    iget-object v1, v1, Lcom/samsung/privilege/util/AnimationBadge$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationBadge$2$1;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    return-void
.end method
