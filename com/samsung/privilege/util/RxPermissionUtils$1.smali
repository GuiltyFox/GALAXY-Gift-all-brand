.class Lcom/samsung/privilege/util/RxPermissionUtils$1;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/RxPermissionUtils;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/RxPermissionUtils;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/RxPermissionUtils;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/privilege/util/RxPermissionUtils$1;->a:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/util/RxPermissionUtils$1;->a:Lcom/samsung/privilege/util/RxPermissionUtils;

    invoke-static {v0}, Lcom/samsung/privilege/util/RxPermissionUtils;->a(Lcom/samsung/privilege/util/RxPermissionUtils;)V

    .line 56
    return-void
.end method
