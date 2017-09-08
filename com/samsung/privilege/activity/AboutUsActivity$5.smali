.class Lcom/samsung/privilege/activity/AboutUsActivity$5;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AboutUsActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AboutUsActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$5;->b:Lcom/samsung/privilege/activity/AboutUsActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity$5;->b:Lcom/samsung/privilege/activity/AboutUsActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$5;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    return-void
.end method
