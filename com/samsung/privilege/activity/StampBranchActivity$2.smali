.class Lcom/samsung/privilege/activity/StampBranchActivity$2;
.super Ljava/lang/Object;
.source "StampBranchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/StampBranchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$2;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampBranchActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$2;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method
