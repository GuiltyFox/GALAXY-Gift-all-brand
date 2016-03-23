.class public Lcom/bzbs/lib/survey/util/fb/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-string/jumbo v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/bzbs/lib/survey/util/fb/FacebookDialog;->DIALOG_BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
    .param p5, "pAppId"    # Ljava/lang/String;
    .param p6, "pAccessToken"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/lib/survey/util/fb/FacebookDialog;->DIALOG_BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "endpoint":Ljava/lang/String;
    const-string/jumbo v2, "display"

    const-string/jumbo v3, "touch"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v2, "redirect_uri"

    const-string/jumbo v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v2, "oauth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 24
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "user_agent"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v2, "client_id"

    invoke-virtual {p3, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_3d
    const-string/jumbo v2, "access_token"

    invoke-virtual {p3, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/bzbs/lib/survey/util/fb/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_79

    .line 37
    const-string/jumbo v2, "Error"

    const-string/jumbo v3, "Application requires permission to access the Internet"

    invoke-static {p1, v2, v3}, Lcom/bzbs/lib/survey/util/fb/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_71
    return-void

    .line 27
    .end local v1    # "url":Ljava/lang/String;
    :cond_72
    const-string/jumbo v2, "app_id"

    invoke-virtual {p3, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 40
    .restart local v1    # "url":Ljava/lang/String;
    :cond_79
    new-instance v2, Lcom/bzbs/lib/survey/util/fb/FbDialog;

    invoke-direct {v2, p1, v1, p4}, Lcom/bzbs/lib/survey/util/fb/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;)V

    invoke-virtual {v2}, Lcom/bzbs/lib/survey/util/fb/FbDialog;->show()V

    goto :goto_71
.end method
