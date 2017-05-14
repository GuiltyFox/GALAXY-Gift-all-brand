.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 175
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    .line 185
    :goto_d
    return-void

    .line 176
    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    .line 177
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    goto :goto_d

    .line 178
    :cond_1a
    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 179
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    goto :goto_d

    .line 180
    :cond_26
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 181
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    goto :goto_d

    .line 183
    :cond_32
    new-instance v0, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/widget/TextView;)I
    .registers 2

    .prologue
    .line 257
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->a(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 11

    .prologue
    .line 205
    sget-object v0, Landroid/support/v4/widget/TextViewCompat;->a:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method
