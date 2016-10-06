.class public abstract Lcom/android/internal/telephony/IExtTelephony$Stub;
.super Landroid/os/Binder;
.source "IExtTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/IExtTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IExtTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IExtTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IExtTelephony"

.field static final TRANSACTION_activateUiccCard:I = 0x3

.field static final TRANSACTION_deactivateUiccCard:I = 0x4

.field static final TRANSACTION_getCurrentUiccCardProvisioningStatus:I = 0x1

.field static final TRANSACTION_getPhoneIdForECall:I = 0x7

.field static final TRANSACTION_getUiccCardProvisioningUserPreference:I = 0x2

.field static final TRANSACTION_isFdnEnabled:I = 0x8

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x5

.field static final TRANSACTION_setSMSPromptEnabled:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.IExtTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IExtTelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IExtTelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IExtTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IExtTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->getUiccCardProvisioningUserPreference(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->activateUiccCard(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_4
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->deactivateUiccCard(I)I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_5
    const-string v6, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->isSMSPromptEnabled()Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v3    # "_result":Z
    :sswitch_6
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IExtTelephony$Stub;->setSMSPromptEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .end local v1    # "_arg0":Z
    :sswitch_7
    const-string v4, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->getPhoneIdForECall()I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    .end local v2    # "_result":I
    :sswitch_8
    const-string v6, "com.android.internal.telephony.IExtTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->isFdnEnabled()Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
