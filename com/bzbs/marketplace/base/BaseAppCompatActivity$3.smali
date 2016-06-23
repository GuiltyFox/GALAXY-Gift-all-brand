.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 294
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 295
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    return-void
.end method
