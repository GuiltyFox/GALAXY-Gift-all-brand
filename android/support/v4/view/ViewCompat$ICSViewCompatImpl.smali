.class Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"


# static fields
.field static b:Ljava/lang/reflect/Field;

.field static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1267
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->c:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 4

    .prologue
    .line 1291
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1293
    return-void

    .line 1291
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 1334
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->a(Landroid/view/View;Z)V

    .line 1335
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 1270
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->c:Z

    if-eqz v2, :cond_7

    .line 1314
    :goto_6
    return v1

    .line 1300
    :cond_7
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->b:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1c

    .line 1302
    :try_start_b
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAccessibilityDelegate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->b:Ljava/lang/reflect/Field;

    .line 1304
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->b:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1c} :catch_26

    .line 1311
    :cond_1c
    :try_start_1c
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_2c

    move-result-object v2

    if-eqz v2, :cond_2a

    :goto_24
    move v1, v0

    goto :goto_6

    .line 1305
    :catch_26
    move-exception v2

    .line 1306
    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->c:Z

    goto :goto_6

    :cond_2a
    move v0, v1

    .line 1311
    goto :goto_24

    .line 1312
    :catch_2c
    move-exception v2

    .line 1313
    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->c:Z

    goto :goto_6
.end method

.method public b(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 1274
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public t(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 1321
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->a:Ljava/util/WeakHashMap;

    .line 1324
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1325
    if-nez v0, :cond_1f

    .line 1326
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 1327
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    :cond_1f
    return-object v0
.end method
