.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$2;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_33} :catch_34

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_33
    return-void

    .line 172
    :catch_34
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_33
.end method
