.class Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;
.super Ljava/lang/Object;
.source "AnimationBadgeToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationBadgeToast$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/AnimationBadgeToast$2;

.field private final synthetic val$layout:Landroid/view/View;

.field private final synthetic val$pContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/AnimationBadgeToast$2;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;->this$1:Lcom/samsung/privilege/util/AnimationBadgeToast$2;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;->val$pContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;->val$layout:Landroid/view/View;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ic.buzzebees.service.receiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "content"

    const-string v2, "GOTO_MARKET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;->val$pContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadgeToast$2$1;->val$layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method
