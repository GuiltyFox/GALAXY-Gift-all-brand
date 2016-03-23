.class final Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$denyPermission:Ljava/lang/String;

.field final synthetic val$enterPermission:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

.field final synthetic val$permission:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$enterPermission:Ljava/lang/String;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$denyPermission:Ljava/lang/String;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$permission:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$mContext:Landroid/content/Context;

    sget v1, Lcom/bzbs/lib/survey/R$style;->DialogPermission:I

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$enterPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$denyPermission:Ljava/lang/String;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$onPermissions:Lcom/bzbs/lib/survey/util/AddOnPermissions;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$8;->val$permission:[Ljava/lang/String;

    # invokes: Lcom/bzbs/lib/survey/util/RxPermissionUtils;->request(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/bzbs/lib/survey/util/RxPermissionUtils;->access$1100(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/bzbs/lib/survey/util/AddOnPermissions;[Ljava/lang/String;)V

    .line 217
    return-void
.end method
