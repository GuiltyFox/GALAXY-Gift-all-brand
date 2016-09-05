.class Landroid/support/v4/widget/TextViewCompatDonut;
.super Ljava/lang/Object;
.source "TextViewCompatDonut.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static a(Landroid/widget/TextView;)I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 40
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->d:Z

    if-nez v0, :cond_10

    .line 41
    const-string/jumbo v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->c:Ljava/lang/reflect/Field;

    .line 42
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->d:Z

    .line 44
    :cond_10
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_36

    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->c:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_36

    .line 46
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->b:Z

    if-nez v0, :cond_2b

    .line 47
    const-string/jumbo v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->a:Ljava/lang/reflect/Field;

    .line 48
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->b:Z

    .line 50
    :cond_2b
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_36

    .line 51
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->a:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    .line 54
    :goto_35
    return v0

    :cond_36
    const/4 v0, -0x1

    goto :goto_35
.end method

.method private static a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .registers 5

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 92
    :goto_4
    return v0

    .line 89
    :catch_5
    move-exception v0

    .line 90
    const-string/jumbo v0, "TextViewCompatDonut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, -0x1

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    :try_start_1
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_b} :catch_c

    .line 83
    :goto_b
    return-object v0

    .line 80
    :catch_c
    move-exception v1

    .line 81
    const-string/jumbo v1, "TextViewCompatDonut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
